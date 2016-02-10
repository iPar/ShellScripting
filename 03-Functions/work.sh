#!/bin/bash

function hello () {
  echo "Hello!"
  now
}

function now () {
  echo "It's $(date +%r)"
}

function sup () {
  for NAME in $@
  do
    echo "Sup, $NAME!"
  done
}

hello
sup Jason Dan Ryan

function my_function () {
  GLOBAL_VAR=1
}

echo $GLOBAL_VAR

my_function

echo $GLOBAL_VAR
