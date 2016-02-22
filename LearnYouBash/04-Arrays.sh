#!/bin/bash

############################################################
#
# Simple script which demonstrates the use of arrays by
# receiving at the command line a list of parameters, which
# are stored in the special variable $@ (or $*) as an array.
# The array is then slice and has additional elements added
# to it before being output to the screen (stdout).
#
############################################################

OUTPUT=${@:2:2}                                             # Set the OUTPUT array equal to a slice of the command line parameter
                                                            #   beginning with the second element, continuing for two elements.
OUTPUT=(I am ${OUTPUT[*]} and ${4})                         # Set array elements inserting 'I' and 'am' at the beginning, followed
                                                            #   by the 'OUTPUT' array, followed by 'and' and finally the ${4}
                                                            #   parameter passed in at the command line.
echo ${OUTPUT[*]}                                           # Output all the elements of the array.

