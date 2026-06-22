# Project 5: Disk Cleanup Automation

# This is a very common Linux administration task.

# Servers accumulate:

# app.log
# error.log
# debug.log
# old backups
# temporary files

# Over time, disk usage grows and someone has to clean old files.

# Objective

# Create a script that automatically deletes old log files.

# Input

# The script should accept:

# ./cleanup.sh <directory>

# Example:

# ./cleanup.sh logs
# Validation
# Check 1

# If no directory is provided:

# ERROR : Enter a directory name

# Exit.

# Check 2

# If the directory does not exist:

# ERROR : Directory does not exist

# Exit.

# Cleanup Logic

# Find all:

# *.log

# files that are older than:

# 7 days

# and delete them.

# Report

# Print:

# ========== CLEANUP REPORT ==========

# Directory        : logs

# Files Deleted    : X

# Cleanup Time     : <date>

# Status           : SUCCESS

# ====================================
# Logging

# Append to:

# cleanup.log

# Example:

# Sun Jun 21 15:40:20 UTC 2026 Deleted 5 old log files from logs
# Bonus 1

# Before deleting, count how many files will be removed.

# Then print:

# Files Deleted : X
# Bonus 2

# If:

# Files Deleted = 0

# print:

# No old log files found
# Bonus 3

# Use the command exit status to determine:

# Status : SUCCESS

# or

# Status : FAILED


#!/bin/bash

if [[ -z "$1"  ]]
then
	echo "ERROR : ENTER A DIRECTORY NAME"
	exit 1
fi

if [[ ! -d "$1"  ]]
then
        echo "ERROR :  DIRECTORY DOESN'T EXIST"
        exit 1
fi

clean=$(find "$1" -type f -name "*.log" -mtime +7 -print -delete | wc -l)

if [[ $clean -eq 0 ]] 
then
	echo " Files Deleted : 0"
	echo " NO old log files found"
else
	echo "========== CLEANUP REPORT ==========="
	echo -e "\nDirectory     : $1"
	echo -e "\nFiles Deleted : $clean"
	echo -e "\nCleanup time  : $(date)"
	echo -e "\nStatus        : SUCCESS"
	echo -e "\n==================================="

	echo "$(date) Deleted $clean old log files from $1" >> cleanup.log
fi
