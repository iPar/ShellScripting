#!/bin/bash

# This script sends a ping to google.com and then, depending
# on the result, either reports that google.com was reachable
# or not.

HOST="google.com"

ping -c 1 $HOST && echo "$HOST reachable." || echo "$HOST UNreachable."

