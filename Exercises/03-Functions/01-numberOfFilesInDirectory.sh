#!/bin/bash

# This script consists of a function that displays the number of files
# in the present working directory

function file_count () {
  local COUNT=$(ls . | wc -l)
  echo $COUNT
}

file_count
