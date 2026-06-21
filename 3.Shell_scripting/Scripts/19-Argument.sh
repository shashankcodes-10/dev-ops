# New Concept Challenge #1 — Positional Arguments

# Until now you've used:

# read -p "Enter username: " user

# Now write a script that:

# Takes a filename as a command-line argument.
# Checks if the file exists.
# Prints:
# File exists
# File does not exist
# Example

# Run:

# ./script.sh test.txt

# Output:

# File exists
# Requirements
# Do not use read
# Use $1
# Use if-else
# Use -f


#!/bin/bash

if [[ -f $1  ]]
then
	echo "file exists"
else
	echo " File does not exist"
fi

	