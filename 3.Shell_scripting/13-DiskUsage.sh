# DevOps Challenge #2
# Problem Statement

# Write a script that:

# Checks the disk usage of the root filesystem (/).
# Prints the current disk usage percentage.
# Example Output
# Disk Usage = 42%
# Requirements
# No user input
# Use df
# Use command substitution $( )
# No loops
# No case



#!/bin/bash

per=$( df -h / | awk ' NR==2 {print$5}')

echo "Disk Usage = $per"
