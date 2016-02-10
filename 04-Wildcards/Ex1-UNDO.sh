#!/bin/bash

shopt -s nullglob

for OLD in *.jpg *.txt
do
  NEW=$(echo $OLD | sed -e 's/.*-\([a-z]*\.[a-z]*\)/\1/')
  if [ "${OLD}" != "${NEW}" ]
  then
    mv ${OLD} ${NEW}
  fi
done

shopt -u nullglob
