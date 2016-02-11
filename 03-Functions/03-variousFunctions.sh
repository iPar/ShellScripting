#!/bin/bash

# This script demonstrates various conventions and
# rules concerning functions.

function hello () {
  echo "Hello!"           # Notice the 'hello' function calls
  now                     # the 'now' function, which is defined
}                         # after it. This is permissible as these
                          # functions are not called until after
function now () {         # both functions have been defined.
  echo "It's $(date +%r)"
}

function sup () {         # This 'sup' function demonstrates
  for NAME in $@          # that a function can receive a list
  do                      # as an argument and iterate through
    echo "Sup, $NAME!"    # it using a loop.
  done
}

hello                     # This is where 'hello' (and) 'now' finally get called.
sup Jason Dan Ryan        # 'sup' is called and passed in a list of names.

function my_function () {
  GLOBAL_VAR=1
}

echo $GLOBAL_VAR        # The echo'ing of '$GLOBAL_VAR' both before
                        # and after 'my_function' is called shows
my_function             # what happens when a global variable is
                        # defined within a function.  The variable
echo $GLOBAL_VAR        # does not get initialized to '1' until
                        # the function in which it is defined is
                        # called.
