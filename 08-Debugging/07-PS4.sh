#!/bin/bash -x

# In which the 'PS4' variable is set to provide information #
# for each debug line that is output to the screen.         #

PS4=' + $BASH_SOURCE : $LINENO : '

TEST_VAR="test"

echo "$TEST_VAR"
