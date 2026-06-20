# DevOps Challenge #3

# Now let's make it slightly more useful.

# Problem Statement

# Write a script that:

# Checks the disk usage of /.
# If disk usage is greater than or equal to 80%, print:
# WARNING: Disk usage is above threshold
# Otherwise print:
# Disk usage is normal
# Example
# Disk Usage = 85%
# WARNING: Disk usage is above threshold
# Requirements
# Use df
# Use awk
# Use if-else
# No loops
# No case

# Hint: You'll need the numeric value only (without %) for the comparison.



#!/bin/bash


per=$( df -h / | awk ' NR==2 {print$5}' | tr -d '%')

echo "Disk usage = $per%"

if [[ $per -lt 80 ]]
then
	echo "Disk usage is normal "
else
	echo "WARNING: Disk usage is above threshold"
fi
