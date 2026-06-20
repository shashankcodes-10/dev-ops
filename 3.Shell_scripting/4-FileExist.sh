# Shell Scripting Challenge #4

# This one is very common in Linux/DevOps interviews.

# Problem Statement

# Write a script that:

# Asks the user for a filename.
# Checks whether the file exists.
# Prints:
# File exists

# or

# File does not exist
# Requirements
# Use read
# Use if-else
# Use a file test operator (-f)
# Add comments
# Example

# Input:

# notes.txt

# Output:

# File exists

# or

# File does not exist


#!/bin/bash

read -p"Enter the file you want to check : " file
 

if [[ -f "$file" ]]
then
	echo " File exist "
else 
	echo "File does not exist"
fi






























