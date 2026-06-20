# DevOps Challenge #7
# Problem Statement

# Write a script that:

# Asks the user for a directory name.
# Counts how many files are present inside that directory.
# Prints:
# Total files = 25
# Requirements
# Use read
# Use ls
# Use wc
# Use command substitution
# No loops
# No case
# Example

# Input:

# /var/log

# Output:

# Total files = 42


#!/bin/bash

read -p"Enter the directory name : " dir

count=$( ls $dir | wc -l)

echo " Total files = $count"
