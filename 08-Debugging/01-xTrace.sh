#!/bin/bash

# In which a simple scripts demonstrates setting and
# unsetting the bash x-trace functionality.

TEST_VAR="test"

set -x

echo $TEST_VAR

set +x

hostname
