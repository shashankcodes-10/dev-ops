# Check 1: Was an Argument Provided?
# [[ -z "$1" ]]

# means:

# Is $1 empty?

# Example:

# ./script.sh

# Then:

# $1=""

# (empty)

# So:

# [[ -z "$1" ]]

# returns TRUE. 





#!/bin/bash

# To check Argument is given or not

if [[ -z "$1" ]]
then
     echo "Usage :  <filename>"
     exit 1
fi
