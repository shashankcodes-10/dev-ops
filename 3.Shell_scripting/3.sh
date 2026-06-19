# Shell Scripting Challenge #3

# Write a script that:

# Takes two numbers from the user.
# Displays a menu:
# 1. Addition
# 2. Subtraction
# 3. Multiplication
# 4. Division
# Takes the user's choice.
# Performs the selected operation.
# Displays the result.
# Example

# Input:

# Enter first number: 10
# Enter second number: 5
# Choose operation: 3

# Output:

# Result = 50
# Requirements
# Use read
# Use case
# No if-else
# Add comments

# This challenge introduces one of the most commonly used shell scripting constructs in admin scripts: case.


#!/bin/bash

read -p"Enter first number : " firstnum
read -p"Enter second number : " secnum
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.division"
read choice

case  $choice in
	1) echo "result = $(($firstnum + $secnum))";;
	2) echo "result = $(($firstnum - $secnum))";;
	3) echo "result = $(($firstnum * $secnum))";;
	4) echo "result = $(($firstnum / $secnum))";;
esac



# If the user enters:

# Enter first number : 10
# Enter second number : 0
# 4

# then Bash tries to execute:

# $((10 / 0))

# and you'll get something similar to:

# bash: division by 0 (error token is "0")

# So your answer is correct: it gives an error because division by zero is mathematically invalid.