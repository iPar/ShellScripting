#!/bin/bash

# In which a new tmux session named 'work-tmux' is created.
# If it doesn't exist, the script creates three (3) new
# windows with names 'Vim', 'serv' and 'comm', before
# selecting the first window.  The script attaches to the
# 'work-tmux' session - either the one just now created or
# the one that was already in existence.

if [ -z "$1" ]                                              # This 'if' statement test to see if argument for 'name' was provided
then                                                        # at the command-line.
  echo -e "\n\nNo argument supplied.  Please try again using following format:\n"
  echo -e "    work-tmux.sh [name]'\n"
  echo -e "Where [name] is the name of the tmux session you wish to create.\n\n"
  exit 0                                                    # If not, it exits before attempting to create a new tmux session.
fi

tmux new -d -s $1                                           # Attempts to create new session and detach from it.
EXISTS=$?                                                   # Stores return value in 'EXISTS' variable

if [ $EXISTS = '1' ]                                        # Tests stored return value to determine if session already exists.
then
  echo 'This tmux sesssion already exists.'
  sleep 1s
  echo 'Attaching now...'
  sleep 2s
else                                                        # Enters 'else' statement if return value indicates a session name
  tmux new-window                                           #   'work-tmux' did not exist.  Then creates three windows and
  tmux rename-window Vim                                    #   renames them 'Vim', 'serv', and 'comm'.
  tmux new-window
  tmux rename-window serv
  tmux new-window
  tmux rename-window comm
  tmux select-window -t 1                                   # Selects window #1.
fi
  tmux attach -t $1                                         # Attaches to session named 'work-tmux', whether it was just now
                                                            # created or was already in existence when this script started.

