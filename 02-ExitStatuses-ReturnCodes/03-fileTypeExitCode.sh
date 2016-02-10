#!/bin/bash

# This script accepts a file or directory name as an argurment, then
# dependent on if it is a regular file, a directory or other type of
# file, exits with codes of 0, 1 or 2, respectively.

if [ -f ${1} ]
then
  exit 0
elif [ -d ${1} ]
then
  exit 1
else
  exit 2
fi
