#!/usr/bin/env bash

getFiles() {
  # Or you can use a global variable to hold files
  echo $(ls | sort | head -10)
}

showFiles() {
  local FILES=$@
  local COUNT=1

  for FILE in $FILES
  do
    echo "File #$COUNT: $FILE"
    ((COUNT++))
  done
}

showFiles $(getFiles)

exit 0
