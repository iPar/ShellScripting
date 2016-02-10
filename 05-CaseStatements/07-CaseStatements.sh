#!/bin/bash

# This script simply prompts the user to enter 'y' or 'n', then test their
# input to determine whether 'y' (or 'yes' in any capitlization pattern) or
# 'n' (or 'no' in any capitalization pattern).  It then echos back to the
# user the user's input being of the variety 'yes', 'no', or invalid.

read -p "Enter 'y' or 'n': " ANSWER

case "$ANSWER" in
  [yY]|[yY][eE][sS])
    echo "You answered 'yes'."
    ;;
  [nN]|[nN][oO])
    echo "You answered 'no'."
    ;;
  *)
    echo "Invalid answer."
  esac
