# Next New Concept Challenge

# Let's learn && and ||, which are heavily used in Linux and CI/CD pipelines.

# Challenge:

# Write a script that:

# Takes a filename as $1.
# If the file exists, print:
# File exists
# If it does not exist, print:
# File does not exist
# Requirement
# Do not use if-else
# Use && and ||
# Use $1


#!/bin/bash

[[ -f $1  ]] && echo "File exist" ||  echo "File does not exist"
