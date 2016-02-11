#!/bin/bash

# In which a variable is used to hold the echo bash     #
# command.  If the variable is not commented out,       #
# then the line that would normally have been execduted #
# is echo'd to the screen.  If, however, the DEBUG      #
# variable is commented out, the $DEBUG statement       #
# evaluates to nothing, which leaves the remainder of   #
# the line, which is a space and the ls command, to be  #
# executed.                                             #

#DEBUG="echo"

$DEBUG ls

DEBUG="echo"

$DEBUG ls
