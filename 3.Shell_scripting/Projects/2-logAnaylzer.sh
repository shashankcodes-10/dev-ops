# Project 2: Log Analyzer

# This feels much more like real operations work than the Health Report.

# Scenario

# You have an application log file.

# Example:

# INFO Application started
# INFO Database connected
# ERROR Database timeout
# WARNING High memory usage
# ERROR API request failed
# INFO User logged in
# ERROR Connection refused
# WARNING Disk usage high
# Objective

# Write a shell script that analyzes a log file.

# Requirements
# Input

# The script should take the log file as an argument:

# ./log_analyzer.sh app.log
# Validation
# Check whether the user provided a filename.
# Check whether the file exists.
# Exit gracefully if validation fails.
# Analysis

# Print:

# ========== LOG ANALYZER ==========

# Log File            : app.log

# Total ERROR lines   : X
# Total WARNING lines : Y
# Total INFO lines    : Z

# Analysis Time       : <current date>

# ==================================
# Constraints
# No loops required
# No arrays required
# Use commands you've already learned
# Store counts in variables before printing
# Bonus (Optional)

# Add:

# Total Log Lines : N
# Extra Bonus (Optional)

# If:

# ERROR > 10

# print:

# ALERT: High number of errors detected

# using an if condition.



#!/bin/bash

if [[ -z "$1"  ]]
then
	echo "Error : NO file given"
	exit 1
fi

if [[ ! -f "$1"  ]]
then
	echo "Error : File does not exist"
	exit 1
fi

Error=$(grep  -i -c  -w "ERROR" "$1")
Warning=$(grep  -i -c  -w "WARNING" "$1")
Info=$(grep  -i -c  -w "INFO" "$1")
line=$( wc -l "$1" | awk '{print$1}')


echo "=============== LOG ANALYZER ================="

echo "Log file                : $1"

echo -e "\n"

echo "Total ERROR lines       : $Error"

echo "Total WARNING lines     : $Warning"

echo "Total INFO lines        : $Info "

echo -e "\n"

echo "Total Log Lines         : $line"

echo "Analysis Time           : $(date)"

echo -e "\n ========================================"


