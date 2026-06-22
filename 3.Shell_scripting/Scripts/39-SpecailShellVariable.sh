# 1. $# → Number of Arguments

# Script:

# #!/bin/bash

# echo "Total arguments: $#"

# Run:

# bash script.sh ssh docker nginx

# Output:

# Total arguments: 3


# 2. $? → Exit Status of Previous Command

# Script:

# #!/bin/bash

# ls abc

# echo $?

# Output:

# ls: cannot access 'abc': No such file or directory
# 2

# If command succeeds:

# ls
# echo $?

# Output:

# 0

# Remember:

# 0 = Success
# Non-zero = Failure


# 3. $$ → Current Script PID

# Script:

# #!/bin/bash

# echo "PID = $$"

# Output:

# PID = 12345

# Useful for:

# temporary files
# logging
# process tracking

# Example:

# touch temp_$$.txt

# creates:

# temp_12345.txt


# 4. $@ → All Arguments Separately

# Script:

# #!/bin/bash

# for i in "$@"
# do
#     echo "$i"
# done

# Run:

# bash script.sh ssh docker nginx

# Output:

# ssh
# docker
# nginx

# Each argument stays separate.


# 5. $* → All Arguments As One String

# Script:

# #!/bin/bash

# for i in "$*"
# do
#     echo "$i"
# done

# Run:

# bash script.sh ssh docker nginx

# Output:

# ssh docker nginx

# Everything becomes one string.

# Most Important Difference

# Run:

# bash script.sh "hello world" docker
# Using $@
# for i in "$@"
# do
#     echo "$i"
# done

# Output:

# hello world
# docker
# Using $*
# for i in "$*"
# do
#     echo "$i"
# done

# Output:

# hello world docker

# Single item.

# Quick DevOps Examples
# Count services passed
# echo "Services supplied: $#"
# Monitor multiple services
# for service in "$@"
# do
#     systemctl is-active "$service"
# done
# Check success
# docker ps

# if [[ $? -eq 0 ]]
# then
#     echo "Docker is running"
# fi
# Create unique log file
# logfile="backup_$$.log"