# DevOps Challenge #5

# Now let's combine monitoring + alerting.

# Problem Statement

# Write a script that:

# Checks current memory usage.
# Prints:
# Memory Usage = 72%
# If memory usage is greater than or equal to 80%, print:
# WARNING: Memory usage is above threshold

# Otherwise:

# Memory usage is normal
# Requirements
# Use free
# Use awk
# Use if-else
# No loops
# No case



#!/bin/bash

used=$( free | awk 'NR==2{print$3}')
total=$( free | awk 'NR==2{print$2}')

usage=$(( $used*100/$total))

echo "Memory usage = $usage%"

if [[ $usage -ge 80  ]]
then
	echo "WARNING: Memory usage is above threshold"
else
	echo "Memory usage is normal"
fi
