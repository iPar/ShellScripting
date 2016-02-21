##  Shell Scripting

This repo is for all my Shell Scripting endeavors, inclusive of exercises I have completed for online courses and scripts I have personally written to automate tasks I frequently need performed.

The exercises were from the following course(s) I have taken:

1. [**Shell Scripting: Discover How to Automate Command Line Tasks**] (https://www.udemy.com/shell-scripting-linux/) 
        *by Jason Cannon* @jasonc
2. [**Learn You Bash**] (https://github.com/denysdovhan/learnyoubash) 
        *by Denys Dovhan* @denysdovhan


## Adding Shell Scripts to PATH

The following are step-by-step instructions for adding a shell script to your PATH, such that you can run the script by name from the terminal

Note that I have only used/tried this on Linux-based systems and only with the `bash` shell.

1.  Save the script in a directory of your choosing, such as in your `~/bin` directory.

2.  Add the directory, such as `~/bin` to your `PATH` typing `export PATH=$PATH:~/bin` at the command line.

3.  If you want this change (i.e. adding this script to your path) to remain permanent, add `export PATH="$PATH:$HOME/bin"` to your `~/.bashrc` file (if you use `bash`).

