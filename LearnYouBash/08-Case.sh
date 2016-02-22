#!/bin/bash

############################################################
#
# Simple script which demonstrates the use of case
# conditional (switch) statements.
#
############################################################

case "${1}" in                                              # Case conditional applied to the first parameter at command line.
  (jpeg|jpg)                                                # Where either 'jpeg' OR 'jpg' is recieved, 'It is jpeg.' is output.
    echo "It is jpeg."
    ;;
  (png)                                                     # Where 'png' is received, 'It is png.' is output.
    echo "It is png."
    ;;
  (gif)                                                     # Where 'gif' is received, 'It is gif.' is output.
    echo "It is gif."
    ;;
  (*)                                                       # For all other extensions received as the first parameter, the error
    echo "${1} is not an image!"                            # '[ext] is not an image!' is output.
    ;;
  esac                                                      # End conditional case statement.

