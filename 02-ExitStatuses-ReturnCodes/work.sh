#!/bin/bash

ls /not/here
echo "$?"

HOST="www.roofcleaningchemical.com"

ping -c 1 $HOST && echo "$HOST reachable." || echo "$HOST UNreachable."
