#!/bin/bash

# This script executes the command "cat /etc/shadow", returning a
# 0 exit status code with a "Command succeeded" message, if the cat
# command itself returned a 0 exit status.  If the command returns
# a non-zero exit status, a "Command failed" message is displayed
# and a 1 exit status is reported.

cat /etc/shadow

if [ "${?}" -eq "0" ]
then
  echo "Command Succeeded!"
  exit 0
else
  echo "Command failed..."
  exit 1
fi
