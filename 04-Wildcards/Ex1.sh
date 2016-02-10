#!/bin/bash

# This script renames (copies) all files in the current directory that end in ".jpg"
# to begin with today's date in the following format: YYYY-MM-DD.

shopt -s nullglob

for FILE in [a-z]*.jpg [a-z]*.txt
do
  mv $FILE $(date +%Y-%m-%d-)${FILE}
done

shopt -u nullglob
