# What is trap?

# trap tells Bash:

# "When a certain event happens, run this command."

# General syntax:

# trap 'command' EVENT
# Example 1: EXIT
# #!/bin/bash

# trap 'echo "Script Finished"' EXIT

# echo "Doing work..."

# Output:

# Doing work...
# Script Finished

# Why?

# Because:

# EXIT

# means:

# Run this when the script exits.

# Example 2: Cleanup Temporary Files

# Without trap:

# touch temp.txt

# echo "Working..."

# rm temp.txt

# Problem:

# If script crashes before:

# rm temp.txt

# the file stays behind.

# With trap:

# #!/bin/bash

# touch temp.txt

# trap 'rm -f temp.txt' EXIT

# echo "Working..."

# Now:

# Script ends normally

# OR

# Script crashes

# Either way:

# rm -f temp.txt

# runs automatically.

# This is the most common real-world use.

# Example 3: Simulate a Crash
# #!/bin/bash

# touch temp.txt

# trap 'rm -f temp.txt' EXIT

# echo "Created temp file"

# cd does_not_exist

# Output:

# Created temp file
# cd: does_not_exist: No such file or directory

# Even though the script failed:

# temp.txt

# is deleted.

# That's the power of trap.

# Example 4: Multiple Commands
# trap '
# echo "Cleaning up..."
# rm -f temp.txt
# echo "Done"
# ' EXIT

# When script exits:

# Cleaning up...
# Done
# Example 5: Catch Ctrl+C

# Normally:

# sleep 100

# Press:

# Ctrl+C

# Script stops immediately.

# With trap:

# #!/bin/bash

# trap 'echo "You pressed Ctrl+C"' INT

# sleep 100

# Press:

# Ctrl+C

# Output:

# You pressed Ctrl+C
# Events You'll Actually Use
# EXIT
# trap 'command' EXIT

# Most common.

# INT (Ctrl+C)
# trap 'command' INT

# Occasionally used.

# TERM
# trap 'command' TERM

# For service shutdowns.

# Not important yet.

# Real DevOps Example

# Suppose a backup script:

# #!/bin/bash

# temp_file="/tmp/backup.txt"

# touch "$temp_file"

# trap 'rm -f "$temp_file"' EXIT

# # Backup work here

# No matter how the script ends:

# Success
# Failure
# Ctrl+C

# the temporary file is removed.

# This prevents junk files from accumulating.

# Should You Memorize It?

# For your level, memorize only this pattern:

# trap 'rm -f temp.txt' EXIT

# and remember:

# EXIT = "Run this command when the script ends."