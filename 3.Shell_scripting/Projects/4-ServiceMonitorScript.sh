# Project 4: Service Monitoring Script

# This is one of the most common tasks in Linux administration and DevOps.

# Scenario

# You have critical services running on a server.

# Examples:

# nginx
# ssh
# docker
# jenkins
# mysql

# You want a script that quickly checks whether a service is healthy.

# Objective

# Create a script that monitors a service.

# Input

# The script should accept:

# ./service_monitor.sh <service_name>

# Example:

# ./service_monitor.sh ssh
# Validation
# Check 1

# If no service name is provided:

# Print an error and exit.

# Monitoring Logic

# Check whether the service is running.

# Output
# If running
# ========== SERVICE REPORT ==========

# Service Name : ssh

# Status       : RUNNING

# Check Time   : <current date>

# ====================================
# If not running
# ========== SERVICE REPORT ==========

# Service Name : ssh

# Status       : NOT RUNNING

# Check Time   : <current date>

# ====================================
# Logging

# Append every check to:

# monitoring.log

# Example:

# Sun Jun 21 15:00:10 UTC 2026 ssh RUNNING

# or

# Sun Jun 21 15:02:14 UTC 2026 nginx NOT RUNNING
# Bonus 1

# If service is not running:

# Print an alert message.

# Example:

# ALERT: Service is down
# Bonus 2

# Count how many times the service was checked today and display it.

# (Not mandatory.)

# Constraints
# No loops required
# No functions required
# Use concepts you've already learned
# Build it completely on your own





#!/bin/bash

if [[ -z $1 ]]
then
	echo "ERROR : Enter a service name"
	exit 1
fi

status=$(systemctl is-active $1)

if [[ $status == "active" ]]
then
	echo "============== SERVICE REPORT =============="
	echo -e "\n Service Name : $1"
	echo -e "\n Status       : RUNNING"           
	echo -e "\n Check Time   : $(date)"
	echo -e "\n ======================================="
        echo "$(date) $1 RUNNING" >> /home/shashank/monitoring.log
else
	echo "============== SERVICE REPORT =============="
        echo -e "\n Service Name : $1"
        echo -e "\n Status       : NOT RUNNING"
        echo -e "\n Check Time   : $(date)"
	echo -e "\n========================================"
        echo "$(date) $1 NOT RUNNING" >> /home/shashank/monitoring.log
fi




