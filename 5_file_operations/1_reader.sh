#!/usr/bin/env bash

# The file to read passed as parameter
FILE=$1

COUNT=1

# IFS: Internal Field Separator
# -r: do not allow backslashes to escape any characher
# LINE: the variable to hold the current line of text
# < $FILE: use redirection so that the passed file is used as input
while IFS='' read -r LINE
do
  echo "Name #$COUNT: $LINE"
  ((COUNT++))
done < "$FILE"

exit 0
