#!/bin/bash

# This script receives the passed in filename parameter
# or directory then reports if it is a regular file,
# a directory or another type of file. Finally, it
# provides the long listing for ls command for the input
# file/directory.

if [ -f $1 ]
then
  echo "This is a Regular File."
elif [ -d $1 ]
then
  echo "This is a Directory."
else
  echo "This is a file of another type."
fi

echo "$(ls -l $1)"
