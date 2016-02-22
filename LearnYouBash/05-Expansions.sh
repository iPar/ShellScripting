#!/bin/bash

############################################################
#
# Simple script which demonstrates the use of expansions.
#
############################################################

RESULT=$(( ${1} * (${2} + ${3}) ))                          # Add parameters 2 and 3 together, multiply the sum with parameter 1
                                                            #   and save the product in 'RESULT'
echo project-${RESULT}/{src,dest,test}/{index,util}.js      # Output using the desired format, using brace expansion to output all
                                                            #   permutations sub-directory and file names.
