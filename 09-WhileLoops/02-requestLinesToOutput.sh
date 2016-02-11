#!/bin/bash

# In which the user is prompted for the number of lines
# the user would like output to the screen. This script
# then uses a while loop to loop through /etc/passwd,
# outputting the user-indicated number of lines of that
# file, prepended with the line number, a colon and a
# space, such as "1: ".

LINE_NUM=1
FILE_PATH="/etc/passwd"

read -p "How many lines of ${FILE_PATH} would you like to see?" LINE_MAX

while [ "$LINE_NUM" -le "$LINE_MAX" ] && read LINE  # Tests that current line is <= desired line max and
do                                                  # uses read function to read in lines from /etc/passwd.
  echo "${LINE_NUM}: ${LINE}" # Outputs the desired line with prepended numbering.
  ((LINE_NUM++))              # This line increments the line number variable LINE_NUM.
done < $FILE_PATH             # This line pipes the file into the read command in the while loop.
