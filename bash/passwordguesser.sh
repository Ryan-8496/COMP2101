#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

referenceString="password"
guessNumber=$((0))
maxGuess=$((3))

while [ $guessNumber -ne $maxGuess ]; do
  read -p "Provide your guess password: " myString
  if [ $myString = $referenceString ]; then
    echo "You guessed the password!"
    break
  else
    echo "The password eludes you..."
    guessNumber=$(($guessNumber + 1))
  fi
done

if [ $guessNumber -eq $maxGuess ]; then
  echo "You took to many attempts to guess the password."
fi
