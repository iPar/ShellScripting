## Adding Shell Scripts to PATH

The following are step-by-step instructions for adding a shell script to your PATH, such that you can run the script by name from the terminal

Note that I have only used/tried this on Linux-based systems and only with the `bash` shell.

1.  Save the script in a directory of your choosing, such as in your `~/bin` directory.

2.  Add the directory, such as `~/bin` to your `PATH` typing `export PATH=$PATH:~/bin` at the command line.

3.  If you want this change (i.e. adding this script to your path) to remain permanent, add `export PATH="$PATH:$HOME/bin"` to your `~/.bashrc` file (if you use `bash`).
