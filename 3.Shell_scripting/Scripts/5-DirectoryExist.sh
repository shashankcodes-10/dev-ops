# Challenge #5

# Write a script that:

# Takes a directory name from the user.
# Checks whether that directory exists.
# Prints:
# Directory exists
# Directory does not exist
# Requirements
# Use read
# Use if-else
# Use the directory test operator (-d)
# No loops
# No case



#!/bin/bash

read -p"Enter the directory name : " dir

if [[ -d $dir ]]
then
	echo "Directory exists"
else
	echo "Directory does not exist"
fi
