#!/bin/bash

# This script simply demonstrates that a function
# returns a status code just like a script or a
# command returns an exit code.

# This function does not specify a return code.
function no_return_code_specified () {
  echo "Function with no return code specified is called..."
}

no_return_code_specified

echo "Yet it still returns...$?"  # A return code of '0' is still
                                  # produced, which can be confirmed 
                                  # using the special variable '$?'.

# This function specifies a return code
function return_code () {
  echo "Function with return code is called..."
  return 7
}

return_code

echo "And the code returned is...$?"
