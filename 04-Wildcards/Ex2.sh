#!/bin/bash

# This script renames files based on their extension. User is prompted for
# a file extension, then prompted whether they with to prepend today's date
# by pressing [Enter] or using their own entered prefix. The script outputs
# the original file name and its new name for each file being renamed.

function rename() {
  for FILE in *.${EXTENSION}
  do
    echo "Renaming ${FILE} to ${1}-${FILE}"
    mv "${FILE}" "${1}-${FILE}"
  done
}

DATE=$(date +%F)   # Pre-loads today's formatted date into $DATE

# Prompts user for extension and prefix with the option to just hit ENTER for today's date as a prefix.
read -p "Please enter a file extension: " EXTENSION
read -p "Please enter a file prefix: (Press ENTER for ${DATE}). " PREFIX

if [ "${PREFIX}" == "" ]  # Checks to see if $PREFIX is empty
then
  rename ${DATE}          # If $PREFIX was empty, rename is called using the $DATE variable.
else
  rename ${PREFIX}        # Otherwise, the non-empty string $PREFIX is used as the prefix.
fi

