#!/bin/bash
#
# this script rolls a pair of six-sided dice
#

# Improve this script by adding a second line of output showing a roll of 5 six-sided dice
# Improve this script by adding a third line of output that rolls a single 20-sided die
# These improvements should also take into consideration the user, and make all 3 output lines self-explanatory to the user
#    - e.g. the first line should be changed to read something like:
#         Rolling a pair of standard dice: x,y rolled
#      and the other output lines should be similarly helpful to the user

# roll the dice and display the result
echo "
Rolling two six sided dice...
Dice one rolled a $(( RANDOM % 6 + 1)), and dice two rolled a $(( RANDOM % 6 + 1)).

Rolling five six sided dice...
Die 1: $(( RANDOM % 6 + 1)) was rolled.
Die 2: $(( RANDOM % 6 + 1 )) was rolled.
Die 3: $(( RANDOM % 6 + 1 )) was rolled.
Die 4: $(( RANDOM % 6 + 1 )) was rolled.
Die 5: $(( RANDOM % 6 + 1 )) was rolled.

Rolling one twenty sided die...
The twenty sided die rolled a $(( RANDOM % 20 + 1)).
"
