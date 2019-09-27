#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

read -p "Pease provide the first number: " firstnum
read -p "Please provide the second number: " secondnum
echo "Running calcuations..."
subtractnd=$((firstnum - secondnum))
multiplynd=$((firstnum * secondnum))
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
modulusnd=$((firstnum % secondnum))
raisednd=$((firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum.
$firstnum minus $secondnum is $subtractnd.
$firstnum multiplied by $secondnum is $multiplynd.
$firstnum raised to the power of $secondnum is $raisednd.
$firstnum divided by $secondnum is $dividend with a remainder of $modulusnd.
  - More precisely, it is $fpdividend
EOF
