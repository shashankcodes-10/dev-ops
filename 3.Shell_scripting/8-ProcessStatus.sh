# Challenge #8

# This is a very common DevOps task.

# Write a script that:

# Asks the user for a process name.
# Checks whether that process is running.
# Prints:
# Process is running

# or

# Process is not running
# Requirements
# Use read
# Use if-else
# No loops
# No case
# Use Linux commands to check process status
# Example

# Input:

# ssh

# Output:

# Process is running

#!/bin/bash
#!/bin/bash

read -p"Enter the process you want to check : " process

<< method1

check=$(  pgrep -w "$process" | wc | awk '{print$1}' )

if [[ $check -eq 0  ]]
then
	echo "Process is not running"
else
	echo "Process is running"
fi

method1

if pgrep -x "$process" > /dev/null
then
	echo "Process is running"
else
	echo "Process is not running"
fi



