#!/usr/bin/env bash

FILE=$1
LIMIT=${2:-3} # default to 3

COUNT=1

while IFS='' read -r LINE
do
  if [ $COUNT -le $LIMIT ]
  then
    echo "Line #$COUNT: $LINE"
    ((COUNT++))
  else
    break
  fi
done < "$FILE"

exit 0
