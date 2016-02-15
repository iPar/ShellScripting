#!/bin/bash

# In which a debug function is used to customize debug  #
# messages to be output to the screen.                  #

function debug () {
  echo -e "\nExecuting line: $@"
  $@
}

debug ls
debug cat $0
