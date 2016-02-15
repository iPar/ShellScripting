#!/bin/bash

# This script undoes the changes to filenames performed by
# the 01-*.sh and 02-*.sh scripts located in this same
# directory.

shopt -s nullglob   # Allows for instance where there are
                    # no matches to the globbing pattern.

# This for loop iterates through all .jpg and .txt files
# found in the current directory and uses the 'echo' command
# to pipe the name of such files into the 'sed' commmand,
# which removes the pre-pended dates from the file names
# using a globbing pattern (regular expression).
for OLD in *.jpg *.txt
do
  NEW=$(echo $OLD | sed -e 's/.*-\([a-z]*\.[a-z]*\)/\1/')
  if [ "${OLD}" != "${NEW}" ]
  then
    mv ${OLD} ${NEW}
  fi
done

shopt -u nullglob   # Unsets the nullglob option.
