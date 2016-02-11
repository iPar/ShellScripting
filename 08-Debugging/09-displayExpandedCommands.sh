#!/bin/bash -x

# In which commands are displayed as they execute, including  #
# all expansions and substitutions.                           #
COMMAND="ls -alr"

$COMMAND
$COMMAND /not/here
$COMMAND
