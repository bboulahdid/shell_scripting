#!/usr/bin/env bash

USER_GUESS=$1
if [ -z $USER_GUESS ]
then
  echo "You should provid a number :("
  exit 1
fi

NUMBER=27 # How about making it random?

if [ $USER_GUESS -gt $NUMBER ]
then
  echo "You're too high!"
elif [ $USER_GUESS -lt $NUMBER ]
then
  echo "You're too low!"
else
  echo "Bravo! you're right!"
fi

exit 0
