# Challenge #10

# Now let's make the loop a little more useful.

# Problem Statement

# Write a script that:

# Takes a number N from the user.
# Prints numbers from 1 to N.
# Example

# Input:

# 5

# Output:

# 1
# 2
# 3
# 4
# 5
# Requirements
# Use read
# Use a for loop
# No while
# No if-else
# No case



#!/bin/bash


<< method1

read -p"Enter a number : " num

for i in $( seq 1 $num)
do
echo "$i"
done

method1

read -p"Enter a number : " num

for (( i=1;i<=$num;i++ ))
do
	echo "$i"
done
