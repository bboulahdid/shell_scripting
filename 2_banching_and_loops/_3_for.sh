#!/usr/bin/env bash

# Get the list of all names
NAMES=$@

for NAME in $NAMES
do
  echo "Hello $NAME"
done

echo "for loop finished!"

exit 0
