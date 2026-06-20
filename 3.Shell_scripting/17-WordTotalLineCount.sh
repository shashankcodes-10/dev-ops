# DevOps Challenge #6
# Problem Statement

# Write a script that:

# Asks the user for a log file name.
# Counts how many lines contain the word:
# ERROR
# Prints:
# Total ERROR lines = 15
# Requirements
# Use read
# Use grep
# Use command substitution
# No loops
# No case
# Example

# If the log file contains:

# INFO Application started
# ERROR Database connection failed
# INFO Request received
# ERROR Authentication failed

# Output:

# Total ERROR lines = 2




#!/bin/bash

read -p"Enter the file to check error in total lines : " file


content=$( grep -c "ERROR" $file)

echo " Total ERROR lines = $content"

 
