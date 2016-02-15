#!/bin/bash

# This script checks to see if '/etc/shadow' exists and
# outputs the message indicating shadow passwords are enabled.
# Then it determines if the user has permission to write to
# '/etc/shadow'.

if [ -e /etc/shadow ]
then
  echo "Shadow passwords are enabled."
  if [ -w /etc/shadow ]
  then
    echo "You have permission to edit /etc/shadow."
  else
    echo "You do NOT have permissions to edit /etc/shadow."
  fi
fi
