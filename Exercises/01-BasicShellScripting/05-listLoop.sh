#!/bin/bash

# This script outputs man, bear, pig, dog and
# cat out to the screan using a for loop.

TYPES="man bear pig dog cat"

for ANIMAL in $TYPES
do
  echo ${ANIMAL}
done
