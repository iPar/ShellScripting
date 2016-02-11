#!/bin/bash

# This script renames (copies) all files in the current directory that end in ".jpg"
# to begin with today's date in the following format: YYYY-MM-DD.  It uses a globbing
# pattern in order to do this.

shopt -s nullglob                     # This command is used to exit without an error
                                      # no files match the searched globbing pattern.
for FILE in [a-z]*.jpg [a-z]*.txt     # Here it searches for any .jpg or .txt files which
do                                    # begin with a letter, followed by any number of
  mv $FILE $(date +%Y-%m-%d-)${FILE}  # characters, followed by either .jpg or .txt,
done                                  # then pre-pends the date stamp to the file using
                                      # the 'mv' command.
shopt -u nullglob
