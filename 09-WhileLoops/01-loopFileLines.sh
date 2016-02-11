#!/bin/bash

# In which a while loop loops through lines of a file,
# outputting the lines of that file are prepended with
# the line number, a colon and a space, such as "1: ".

LINE_NUM=1

while read LINE               # This is the while loop using the read function to read in a file.
do
  echo "${LINE_NUM}: ${LINE}" # This line outputs the desired line and prepended numbering.
  ((LINE_NUM++))              # This line increments the line number variable LINE_NUM.
done < /etc/passwd            # This line pipes the file into the read command in the while loop.
