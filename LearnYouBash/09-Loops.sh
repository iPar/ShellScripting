#!/bin/bash

############################################################
#
# Simple script which demonstrates the use of loops.
#
############################################################

LOW=$1
# echo $LOW
HIGH=$(( $2 - 1 ))
# echo $HIGH

for i in $(eval echo {$LOW..$HIGH}); do                          # Iterate through all numbers in a range from parameter 1 to
  if [[ $((i % 2)) == 0 ]]; then echo $i; fi                #   parameter 2, and if a particular number is divisible by 2,
done                                                        #   print it to the screen (stdout).
