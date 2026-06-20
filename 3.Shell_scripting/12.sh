# DevOps Shell Scripting Challenge #1
# Problem Statement

# Write a script that:

# Asks the user for a service name.
# Checks whether the service is running.
# Prints:
# Service is running

# or

# Service is not running
# Example

# Input:

# nginx

# Output:

# Service is running
# Requirements
# Use read
# Use if-else
# Use systemctl
# No loops
# No case
# Notes

# You can test with services like:

# ssh
# cron
# docker
# nginx
# apache2

# depending on what's installed on your Linux VM.




#!/bin/bash

read -p"Enter the service u want to check : " service

<< method1

status=$(systemctl is-active "$service")

if [[ $status == "active"  ]]
then
	echo "service is running"
else
	echo "service is not running"
fi

method1


if systemctl is-active --quiet "$service"
then
	echo "service is running"
else 
	echo "service is not running"
fi
