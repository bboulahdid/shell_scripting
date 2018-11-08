#!/usr/bin/env bash

COUNT=1
DEFAULT=10

# if `$1` is empty use `DEFAULT`'s value
MAX=${1:-$DEFAULT}

if [ $MAX -eq $DEFAULT ]
then
  echo "You didn't provide a maximum number."
  echo "Using the default value $DEFAULT ..."
fi

while [ $COUNT -le $MAX ]
do
  echo "COUNT = $COUNT"
  ((COUNT++))
done

echo "Loop finished"

exit 0
