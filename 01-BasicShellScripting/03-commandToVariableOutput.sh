#!/bin/bash

# This script stores the output of 'hostname' command
# in a variable then displays that hostname in ouput.

OUTPUT=$(hostname)

echo "This script is running on ${OUTPUT}"
