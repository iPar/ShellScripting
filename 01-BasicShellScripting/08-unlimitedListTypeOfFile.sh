#!/bin/bash

# This script receives unlimited passed in filename(s) and/or
# directory(ies) reporting as to whether each file is a regular file,
# a directory or another type of file. Finally, it
# provides the long listing for ls command for the input
# file/directory.

for FILE in $@
do
  if [ -f $FILE ]
  then
    echo "This is a Regular File."
  elif [ -d $FILE ]
  then
    echo "This is a Directory."
  else
    echo "This is a file of another type."
  fi
echo "$(ls -l $FILE)"
done
