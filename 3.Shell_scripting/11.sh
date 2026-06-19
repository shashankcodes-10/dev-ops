# Challenge #11
# Problem Statement

# Write a script that:

# Takes a number N from the user.
# Calculates the sum of all numbers from 1 to N.
# Prints:
# Sum = <value>
# Example

# Input:

# 5

# Output:

# Sum = 15

# because:

# 1 + 2 + 3 + 4 + 5 = 15
# Requirements
# Use read
# Use a for loop
# No while
# No case



#!/bin/bash

read -p"Enter a number : " num

sum=0

<< method1

for i in $(seq 1 $num)
do
	((sum+=$i))
    
done 
echo " Sum =$sum"

method1

for (( i=1;i<=$num;i++ ))
do 
	((sum+=$i))
done

echo "sum = $sum"