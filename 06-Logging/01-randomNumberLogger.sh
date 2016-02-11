#!/bin/bash

# This script displays one random number to the screen and generates
# a syslog message to user.info

number=$RANDOM

echo "Random number is ${number}."

logger -i -t ${0} -p user.info "Random number is ${number}"
