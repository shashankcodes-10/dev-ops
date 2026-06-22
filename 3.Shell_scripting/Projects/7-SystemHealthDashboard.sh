# Project 7: System Health Dashboard

# This is the first project where you'll combine multiple smaller projects into one script.

# Think of it as:

# Linux Health Report
#         +
# Service Monitoring
#         +
# Logging
# Objective

# Generate a complete server health report.

# Expected Output

# Something similar to:

# ================================================
#             SYSTEM HEALTH DASHBOARD
# ================================================

# Hostname           : Ubuntu1

# Current User       : shashank

# Date               : Sun Jun 21 18:45:11 UTC 2026

# Uptime             : up 3 hours, 15 minutes

# Disk Usage         : 42%

# Memory Usage       : 35%

# ------------------------------------------------

# ssh                : RUNNING
# cron               : RUNNING
# nginx              : NOT RUNNING

# ------------------------------------------------

# Healthy Services   : 2

# Unhealthy Services : 1

# Total Services     : 3

# ================================================
# Requirements
# System Information

# Include:

# Hostname
# Current User
# Current Date
# Uptime
# Resource Information

# Include:

# Disk Usage (%)
# Memory Usage (%)
# Service Health

# Use an array of services.

# Example:

# services=("ssh" "cron" "nginx")

# Check each service and print status.

# Summary

# Print:

# Healthy services count
# Unhealthy services count
# Total services checked
# Logging

# Append a single line to:

# system_health.log

# Example:

# Sun Jun 21 18:45:11 UTC 2026 Health check completed. Healthy=2 Unhealthy=1
# Bonus 1

# If any service is down:

# ALERT : One or more services are down
# Bonus 2

# If disk usage exceeds a threshold (for example 80%):

# WARNING : Disk usage is high
# Bonus 3

# If memory usage exceeds a threshold:

# WARNING : Memory usage is high




#!/bin/bash

Disk=$(df -h / | awk 'NR==2 {print$5}')

used=$( free  | awk 'NR==2 {print$3}')
total=$(free  | awk 'NR==2 {print$2}')
usage=$(( used*100 / total ))


echo "==============================================================="
echo "                  SYSTEM HEALTH DASHBOARD                      "
echo "==============================================================="
echo -e  "\nHostname           :$(hostname)"
echo -e  "\nCurrent User       :$(whoami)"
echo -e  "\nDate               :$(date)"
echo -e  "\nUptime             :$(uptime -p)"
echo -e  "\nDisk Usage         :$Disk"
echo -e  "\nMemory Usage       :$usage%"
echo -e  "\n--------------------------------------------------------"

<< realtime
services=("$@")
realtime


services=("ssh" "cron" "nginx")

total=${#services[@]}

heal=0
unheal=0

for i in "${services[@]}"
do
	if systemctl is-active "$i" > /dev/null
	then
		echo "$i         : RUNNING"
		(( heal++  ))
	else
		echo "$i         : NOT RUNNING"
		(( unheal++ ))
	fi
done

echo -e  "\n--------------------------------------------------------------"
echo -e  "\nHealthy Services     : $heal                                  "
echo -e  "\nUnHealthy Services   : $unheal                                "
echo -e  "\nTotal Services       : $total                                 "
echo -e  "\n=============================================================="
echo "$(date) Health check completed. Healthy=$heal Unhealthy=$unheal" >> /home/shashank/system_health.log

if [[ $unheal -gt 0 ]]
then
	echo "ALERT : One or more services are down"
fi

usg_disk=$(echo "$Disk" | tr -d '%') 

if [[ $usg_disk -gt   80   ]]
then
	echo "WARNING : Disk usage is high"
fi


if [[ $usage -gt   80   ]]
then
        echo "WARNING : Memory usage is high"
fi

