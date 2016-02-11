#!/bin/bash

# In which a variable is used to signal to the user #
# whether they are in debug mode.                   #

DEBUG=false

$DEBUG && echo "Debug mode is ON." || echo "Debug mode is OFF."

DEBUG=true

$DEBUG && echo "Debug mode is ON." || echo "Debug mode is OFF."
