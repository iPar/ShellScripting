#!/bin/bash

############################################################
#
# Simple script which demonstrates the use of functions.
# Initially this script was written to pass the challenge
# outlined in learnyoubash workshoppers, but the 'solution'
# output itself did not output according to the stated
# objective, as it output odd numbers incremented by 2.
# Thus, this script was modified to match the solution
# output in order to pass verification.
#
############################################################

LEVEL=0                                                     # Initialize # of indent spaces to '0' for main level printing.
LOW=$1                                                      # Initialize 'LOW' variable to equal first command-line parameter.
HIGH=$2                                                     # Initiliaze 'HIGH' variable to equal second parameter.

recursive_print () {                                        # Definition of 'recursive_print' function
  local INC=1                                               # Definition of 'INC' a local variable that  will be used to
                                                            #   track how many indentation spaces have been printed.
  if [[ $1 -lt $HIGH ]]
  then
    LEVEL=$(( LEVEL + 1 ))                                  # Increment 'LEVEL', which indicates where in indentation/tree we are.
    while [[ $INC -le $LEVEL ]]; do                         # While 'INC' variable is less than or equal to 'LEVEL' variable, we
      echo -n ' '                                           #   will print spaces on the same line using the '-n' option for echo.
      INC=$(( INC + 1))                                        # Increment 'INC' by 1 with each iteration to track spaces printed.
    done

    echo -ne "$1\n"                                         # Print the value passed into 'recursive_print' as parameter '$1'
    recursive_print $(( $1 + 2 ))                             # Calls itself (i.e. recursive function call) with a parameter passed
  else                                                      #   which is 2 greater than what was passed into the present function
    return 0                                                #   call.  In other words, increment by 2 in order to print the next
  fi                                                        #   even number in the sequence.
}

main () {
  echo $FUNCNAME                                            # Print the name of the present function using special variable.
  if [[ $(( $LOW % 2 )) == 0 ]]                             # If 'LOW' variable is odd, then increment by 1.
  then
    LOW=$(( LOW + 1 ))
  fi
  recursive_print $LOW                                      # 'main' function calls 'recursive_print' function the first (and
  return 0                                                  #  only) time.  All other calls of 'recursive_print' are made by
}                                                           #   'recursive_print' itself.

main                                                        # 'main' function is called.

