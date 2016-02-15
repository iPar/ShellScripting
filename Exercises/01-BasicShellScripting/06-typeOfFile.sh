#!/bin/bash

# This script prompts the user for the name of a file
# or a directory then reports if it is a regular file,
# a directory or another type of file. Finally, it
# provides the long listing for ls command for the
# user provided file or directory.

read -p "Enter the name of a file/directory: " FILE

if [ -f ${FILE} ]
then
  echo "This is a Regular File."
elif [ -d ${file} ]
then
  echo "This is a Directory."
else
  echo "This is a file of another type."
fi

echo "$(ls -l ${FILE})"
