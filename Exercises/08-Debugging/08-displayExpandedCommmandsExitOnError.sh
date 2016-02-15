#!/bin/bash -ex

# In which commands are displayed as they execute, including  #
# all expansions and substitutions, exiting on the first      #
# error (non-zero exit status).                               #

COMMAND="ls -alr"

$COMMAND
$COMMAND /not/here
$COMMAND
