# Project 1: Linux Health Report
# Objective

# Create a shell script that generates a Linux server health report.

# Expected Output

# Something similar to:

# ===================================
#         LINUX HEALTH REPORT
# ===================================

# Hostname      : Ubuntu1
# Uptime        : up 3 hours, 12 minutes
# Current User  : shashank
# Date          : Sun Jun 21 18:30:15 IST 2026

# Disk Usage    : 42%
# Memory Usage  : 35%

# ===================================
# Requirements

# Your script should:

# System Information

# Print:

# Hostname
# Current logged-in user
# Current date/time
# Human-readable uptime
# Resource Information

# Print:

# Root (/) disk usage percentage
# Memory usage percentage
# Formatting
# Store values in variables before printing
# Use clear labels
# Use proper spacing/alignment
# Constraints
# No user input (read)
# No positional arguments ($1)
# No loops required
# No arrays required 



#!/bin/bash


echo "====================================================="

echo "                Linux Health Report                  "

echo "====================================================="

echo "Hostname         :  $(hostname)"

echo "Uptime           :  $(uptime -p)"

echo "Current User     :  $(whoami)"

echo "Date             :  $(date)"


echo -e "\n"

echo "Disk Usage       :  $(df -h / | awk 'NR==2 {print $5}')"

used=$(free | awk 'NR==2 {print$3}')

total=$(free | awk 'NR==2 {print$2}')

usage=$(($used*100 / $total))


echo "Memory Usage     :  $usage%"

# to see the output on the terminal and simultaneously
# appending to other file use | tee -a" during running script

