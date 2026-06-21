# New Concept Challenge #2 — Multiple Arguments

# Write a script that:

# Takes two numbers as command-line arguments.
# Prints their sum.
# Example

# Run:

# ./script.sh 10 20

# Output:

# Sum = 30
# Requirements
# Use $1
# Use $2
# No read
# No loops
# No case


#!/bin/bash 

sum=$(( $1 + $2 ))

echo " Sum is $sum"
