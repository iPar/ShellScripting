#!/bin/bash

# This script displays the message "This script will exit with
# with a 0 exit status" and then does in fact exit with a 0 exit
# status. Confirm the same by using the "$?" command in the CLI
# after running this script. "0: command not found" should be
# the result.

echo "This script will exit with a 0 exit status."

exit 0
