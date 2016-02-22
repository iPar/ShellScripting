#!/bin/bash

############################################################
#
# Simple script which demonstrates the use of debugging
# options, following a list of instructions turning various
# debugging options on and off.
#
############################################################

set -vn
echo $@
touch $@
mkdir ./folder
mv file* ./folder
cd ./folder
ls
set +vn
