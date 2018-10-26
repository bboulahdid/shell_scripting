#!/usr/bin/env bash

# Assign parameter's value to a variable with a meaningful name
NAME=$1

echo "$(date) - Hello $NAME, how are you?"

# Print the running script / command
echo $0

# Print the current directory
echo $(pwd)

# If everything run successfuly, the script exits with code 0
exit 0
