# New Concept Challenge #3 — Exit Codes ($?)
# Problem Statement

# Write a script that:

# Takes a filename as $1.
# Runs:
# ls "$1"
# Checks the exit code using:
# $?
# Prints:
# File/Directory exists

# or

# File/Directory does not exist
# Requirements
# Use $1
# Use ls
# Use $?
# Use if-else
# Do not use -f or -d



#!/bin/bash

ls  "$1"> /dev/null 2>&1

if [[ $? -eq 0 ]]
then
	echo "File/Directory exists"
else
	echo "File/Directory does not exist"
fi


<< AdvanceMethod

if ls "$1" > /dev/null 2>&1
then
    echo "File/Directory exists"
else
    echo "File/Direcory does not exists"
fi

AdvanceMethod
