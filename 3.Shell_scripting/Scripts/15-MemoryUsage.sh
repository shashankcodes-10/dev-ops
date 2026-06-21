# DevOps Challenge #4
# Problem Statement

# Write a script that:

# Checks current memory usage.
# Prints:
# Memory Usage = 63%
# Requirements
# No user input
# Use free
# Use awk
# Use command substitution $( )
# No loops
# No case
# Example
# Memory Usage = 63%

# You need to calculate:

# (Used Memory / Total Memory) × 100

# using the output of:

# free


#!/bin/bash


used=$(free | awk 'NR==2{print$3}')
total=$(free | awk 'NR==2{print$2}')

usage=$((   $used*100 / $total   ))

echo "Memory Usage = $usage%"


