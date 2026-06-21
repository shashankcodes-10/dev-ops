# Project 3: Backup Automation Script

# This is the first project that resembles a real system administration / DevOps task.

# Scenario

# A user wants to back up a directory.

# Instead of manually copying files every day, they want a script.

# Objective

# Create a shell script that:

# Input

# Accepts:

# ./backup.sh <source_directory>

# Example:

# ./backup.sh project_files
# Validation
# Check 1

# If no argument is provided:

# Print an error and exit.

# Check 2

# If the directory does not exist:

# Print an error and exit.

# Backup Logic

# Your script should:

# Create a backup directory

# If it does not already exist:

# backups
# Create a timestamped backup

# Every backup should have a unique name.

# Example:

# backups/project_files_2026-06-21_19-30-15

# or similar.

# The exact timestamp format is your choice.

# Copy the contents

# The backup should contain everything from the source directory.

# Output

# Example:

# ========== BACKUP REPORT ==========

# Source Directory : project_files

# Backup Location  : backups/project_files_2026-06-21_19-30-15

# Status           : SUCCESS

# ===================================
# Logging

# Append to:

# backup.log

# Example:

# Sun Jun 21 19:30:15 IST 2026 Backup created for project_files
# Constraints
# No functions required
# No loops required
# No arrays required
# Bonus 1

# After copying:

# Print the number of files backed up.

# Bonus 2

# Show the size of the backup directory.

# Bonus 3

# If the backup operation fails:

# Print:

# Status : FAILED

# Otherwise:

# Status : SUCCESS

# using the exit status of the backup command.




#!/bin/bash

if [[ -z $1 ]]
then
	echo "ERROR : Enter a directory name"
	exit 1
fi


if [[ ! -d $1 ]]
then
	echo "ERROR : Directory doesn't exist"
	exit 1
fi

if [[ ! -d "/home/shashank/backups" ]]
then
	mkdir-p  /home/shashank/backups
fi

back="/home/shashank/backups"

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")


if zip -r "$back/backup-$timestamp.zip" $1 >/dev/null
then
	echo "========== BACKUP REPORT =========="
	echo -e "\n Source Directory : $1"
	echo -e "\n backup Location  : $back"
	echo -e "\n status           : SUCCESS"
	echo -e "\n==============================="

	echo "$(date) Backup created for $1" >> /home/shashank/backup.log
else
	echo "Backup doesn't completed"
fi


