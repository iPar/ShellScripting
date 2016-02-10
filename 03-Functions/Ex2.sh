# This script's file_count function accepts a directory as an argument.
# The directory name is displayed, followed by a colon, and then the
# number of files on the following line.  This script calls the
# file_count function on three different directories.

#!/bin/bash

function file_count () {
  local COUNT=$(ls $1 | wc -l)
  echo -e "${1}:\n    ${COUNT}"
}

file_count /etc
file_count /var
file_count /usr/bin
