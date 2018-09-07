# Instructions to use this repository with syzygy

## If first cloning into syzygy:

1. Go to https://utoronto.syzygy.ca, log in with your UTorID, and start the server.
2. Near the top-right-hand corner of the home menu, hit the drop-down menu "New", and click on Terminal.
3. in the terminal, create a PHY293 (or whatever) folder and go there:

`mkdir PHY293`

`cd PHY293`

4. In there, clone the repo of my chapters:

`git clone https://github.com/PHY293-2018/Chapters.git`

* This should create a new folder called `Chapters`, in which all the chapters of my lecture notes will be located.

## Refreshing the lecture notes

The chapter folders are still empty, because I will probably change the content from last year
As the class progresses, I will of course add chapters, or modify the chapters, correct typos, etc.

5. To get the latest updates, repeat steps 1-3 above.
6. If you want to modify the notebooks and keep your mods while refreshing my own content, I suggest you create your own "fork" and work on it. You will work on your fork, and I will still dispense my wisdom through my original project. How to nagivate between forks, remotes, etc? I am afraid you are going to have to look it up yourself.
7. If you just want to have my content up-to-date, execute code, and then wait for my next delivery, just type

`git fetch`

in the Terminal, where you left at the end of step 3.

## Opening a Jupyter notebook:

8. Repeat steps 1-3 above.
9. Repeat step 7 above, probably.
10. You can navigate to the Jupyter file, using the graphical interface of the home menu of syzygy. You are looking for a `.ipynb` file.
