# Project 6: Multi-Service Health Check

# This is much closer to a real monitoring script.

# Scenario

# A server runs multiple critical services.

# Examples:

# ssh
# docker
# nginx
# jenkins

# An administrator wants a single report showing whether all important services are healthy.

# Objective

# Create a script that checks multiple services and generates a report.

# Requirements
# Services To Check

# Hardcode a list of services inside the script.

# Example:

# ssh
# docker
# cron

# Choose services that actually exist on your Ubuntu VM.

# For Each Service

# Determine whether it is:

# RUNNING

# or

# NOT RUNNING
# Report Format

# Example:

# ========== HEALTH REPORT ==========

# ssh      : RUNNING
# docker   : RUNNING
# cron     : NOT RUNNING

# ===================================
# Logging

# Append results to:

# service_health.log

# Example:

# Sun Jun 21 18:10:11 UTC 2026 ssh RUNNING
# Sun Jun 21 18:10:11 UTC 2026 docker RUNNING
# Sun Jun 21 18:10:11 UTC 2026 cron NOT RUNNING
# Bonus 1

# At the end print:

# Total Services Checked : X
# Bonus 2

# Print:

# Healthy Services : X

# Unhealthy Services : Y
# Bonus 3

# If any service is down, print:

# ALERT : One or more services are down
# Constraints

# This project is intended to make you practice:

# Arrays
# Loops
# Conditions
# Logging
# Service checks

# So try to use all of those.




#!/bin/bash

services=("ssh" "cron" "nginx")

total=${#services[@]}

heal=0

unhel=0

echo "================ HEALTH REPORT =================="
echo "                                                 "

for i in "${services[@]}"
do
	if systemctl is-active $i > /dev/null
	then
		echo "$i       : RUNNING"
		(( heal++ ))
		echo "$(date) "$i" RUNNING" >> /home/shashank/service_health.log
	else
		echo "$i        :NOT RUNNING"
		(( unhel++))
		echo "$(date) "$i":NOT RUNNING" >> /home/shashank/service_health.log
	fi
	
done
echo "                                                   "
echo "Healthy Services   : $heal                         "
echo "Unhealthy Services : $unhel                        "
echo "                                                   "
echo "Total Services Checked    :$total                  "
echo "==================================================="

