# Shell Scripting Challenge #2

# Write a script that:

# Takes a number from the user.
# Prints:
# Number is Positive
# Number is Negative
# Number is Zero
# Requirements
# Use read
# Use if, elif, else
# No loops



#!/bin/bash

read -p"Enter a number : " num

if [[ $num -eq 0 ]]
then
	echo "Number is Zero"
elif [[ $num -gt 0  ]]	
then
	echo "Number is Positive"
else
	echo "Number is Negative"
fi
