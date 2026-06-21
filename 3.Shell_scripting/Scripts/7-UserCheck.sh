# This is the first challenge that starts to feel like a real DevOps script.

# Problem Statement

# Write a script that:

# Asks the user for a username.
# Checks whether the user exists on the system.
# Prints:
# User exists

# or

# User does not exist
# Requirements
# Use read
# Use if-else
# No loops
# No case
# Use a Linux command to verify whether the user exists
# Example

# Input:

# root

# Output:

# User exists

# Input:

# devops123

# Output:

# User does not exist

#!/bin/bash

read -p"Enter the user you want to check : " user

val=$( cat /etc/passwd | grep  "^$user:" | wc | awk '{print$1}' )

if [[ $val -eq 0  ]]
then
	echo "User does not exist"
else
	echo "User exists"
fi

