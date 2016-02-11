#!/bin/bash -ex

# In which a simple script demonstrates the use of the    #
# BASH -e option to cause the script to exit immediately  #
# if a command exits with a non-zero exit status.  Note   #
# that in executing this script, the script exits,        #
# returning the user to the command line prior to the     #
# execution of the echo command.  This is due to the      #
# ls command returning a non-zero exit status code as     #
# a result of there not being a file named "/not/here".   #

FILE_NAME="/not/here"

ls $FILE_NAME

echo $FILE_NAME
