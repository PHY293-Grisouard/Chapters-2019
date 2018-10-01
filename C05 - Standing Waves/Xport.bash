#!/bin/bash

#!/bin/bash

if [ $# -lt 1 ]; then
    echo 'TeX_Xport takes one argument: the file name WITHOUT EXTENSION'
    exit
fi

echo ' '
echo '---- Conversion to tex ----'
jupyter nbconvert ${1}.ipynb --to latex --template tmplt.tplx
ed ${1}".tex" <<< $'g/(.newcommand/d\nw\nq'
ed ${1}".tex" <<< $'g/(.newcommand/p'
# previous line: latex commands in latex export and jupyter noteook
# are different. I can make the notebook skip the latex commands with
# a rax2wnbconvert cell, but I have to remove the jupyter commands
# manually with ed. "g/(.newcommand/d" means "any [g] line that
# contains a parenthesis followed by any character (bc backslash is
# a pain) followed by newcommand, delete it [d], new line [\n] write
# [w], new line [\n] quit [q]
ed -s ${1}".tex" <<< $'g/.gif/s/.gif/.png/g\nw\nq'
# above: replace all mentions of .gif (which is not supported by
# pdflatex) with .png. Of course, a png conversion needs to be present
# in the working directory.


echo ' '
echo '---- Compiling tex file ----'
pdflatex ${1}.tex
bibtex ${1}.aux
pdflatex ${1}.tex
pdflatex ${1}.tex
pdflatex ${1}.tex
rm *.aux *.bbl *.blg *.log *.out *.tex
