# ext Challenge

# Write a script that:

# Takes a directory as $1
# Finds all .log files older than 7 days

# Use:

# find
# -name
# -mtime


#!/bin/bash


find "$1" -type f -name "*.log" -mtime +7 -delete
