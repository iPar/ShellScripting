#!/bin/bash

# This script uses a custom function to display
# one random number to the screen and generate
# a syslog message to user.info, tagging it with
# 'randomly'.

function logit () {
  local MESSAGE=$1
  echo $MESSAGE
  logger -t randomly -p user.info ${MESSAGE}
}

logit "Random Number: ${RANDOM}"
logit "Random Number: ${RANDOM}"
logit "Random Number: ${RANDOM}"


# number=$RANDOM
# echo "Random number is ${number}."
# logger -i -t ${0} -p user.info "Random number is ${number}"
