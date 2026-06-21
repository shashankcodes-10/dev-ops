# Challenge #6

# This is a very common Linux/DevOps task.

# Problem Statement

# Write a script that:

# Takes a filename from the user.
# Checks whether the file exists.
# If it exists, display:
# File exists
# File size: <size in bytes>
# If it does not exist, display:
# File does not exist
# Requirements
# Use read
# Use if-else
# Use -f
# Use a Linux command to get the file size
# No loops
# No case
# Example

# If test.txt exists and is 120 bytes:

# File exists
# File size: 120 bytes



#!/bin/bash

read -p"Enter the file name : " file

if [[ -f $file ]]
then
	echo "File exists"
	echo "File size: $(stat -c %s "$file")"
else
	echo "File does not exist"
fi
