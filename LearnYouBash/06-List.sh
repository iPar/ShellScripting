#!/bin/bash

############################################################
#
# Simple script which demonstrates the use of streams, pipes
# and lists.
#
############################################################

${1} || echo "First parameter is false."                    # Echo statement if first parameter is false.

${2} && pwd                                                 # Print directory path if second parameter is true.

${3} && ls || echo "Third parameter is false."              # Print list of all files in directory if third parameter is true;
                                                            # otherwise, echo statement that it is false.
