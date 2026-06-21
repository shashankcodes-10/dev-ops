# -maxdepth

# Limits how deep find can search.

# Suppose:

# logs/
# ├── app.log
# ├── nginx.log
# └── old/
#     ├── old1.log
#     └── old2.log

# Command:

# find logs -maxdepth 1

# Output:

# logs
# logs/app.log
# logs/nginx.log
# logs/old

# Notice:

# old1.log
# old2.log

# are NOT shown.

# Because find only searched one level deep.

# Without -maxdepth
# find logs

# Output:

# logs
# logs/app.log
# logs/nginx.log
# logs/old
# logs/old/old1.log
# logs/old/old2.log

# Everything is searched.

#-----------------------------------------------------------------------------------------------------------------------------

# -mindepth

# Skip the first N levels.

# Example:

# find logs -mindepth 1

# Output:

# logs/app.log
# logs/nginx.log
# logs/old
# logs/old/old1.log
# logs/old/old2.log

# Notice:

# logs

# itself is not printed.

# Common DevOps Usage
# Only current directory files
# find . -maxdepth 1 -type f

# Very common.

# Equivalent to:

# Show me files here.
# Don't go into subdirectories.
# Delete old logs but not nested directories
# find /var/log -maxdepth 1 -name "*.log"
# Ignore root directory itself
# find logs -mindepth 1

#---------------------------------------------------------------------------------------------------------------

# find -exec

# Until now you've done:

# find "$1" -name "*.log"

# which only finds files.

# What if you want to do something with those files?

# That's where -exec comes in.

# Basic Syntax
# find <path> <conditions> -exec <command> {} \;
# Meaning
# {}

# represents the file found by find.

# \;

# means:

# End of command.

# You must write it exactly like that.

# Example 1

# Suppose:

# logs/
# ├── app.log
# ├── nginx.log
# ├── test.log

# Command:

# find logs -name "*.log" -exec ls -l {} \;

# find finds:

# app.log
# nginx.log
# test.log

# Then runs:

# ls -l app.log
# ls -l nginx.log
# ls -l test.log
# Example 2

# Show file sizes

# find logs -name "*.log" -exec du -h {} \;

# Output:

# 4K logs/app.log
# 8K logs/nginx.log
# 2K logs/test.log
# Example 3 (Very Common)

# Delete files

# Instead of:

# find logs -name "*.log" -delete

# you can do:

# find logs -name "*.log" -exec rm {} \;
# Example 4 (Permissions)
# find logs -type f -exec chmod 644 {} \;

# This runs:

# chmod 644 file1
# chmod 644 file2
# chmod 644 file3

# Very common for Linux administration.

# Memory Trick

# Think:

# find file
#        ↓
# replace {} with filename
#        ↓
# run command

# Example:

# find . -name "*.log" -exec cat {} \;

# becomes:

# cat app.log
# cat nginx.log
# cat test.log





Notes for Your Find Cheat Sheet
# Search only current level
find "$1" -maxdepth 1

# Skip root directory itself
find "$1" -mindepth 1

# Find .log files only in current directory
find "$1" -maxdepth 1 -type f -name "*.log"

# Find .log files in subdirectories but not root
find "$1" -mindepth 2 -type f -name "*.log"

#apply spefic command/operation to a file got by find 
find <path> <conditions> -exec <command> {} \