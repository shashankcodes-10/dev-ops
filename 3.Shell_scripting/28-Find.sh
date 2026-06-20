# these script contain all the concept of find 

#!/bin/bash

# Find files by name
find "$1" -name "*.log"

# Find regular files
find "$1" -type f

# Combine name and type
find "$1" -type f -name "*.log"

# Find files larger than 1 MB
find "$1" -type f -size +1M

# Combine type, name, and size
find "$1" -type f -name "*.log" -size +1M

# Files modified more than 7 days ago
find "$1" -mtime +7

# Find empty files
find "$1" -type f -empty

# Delete empty files
find "$1" -type f -empty -delete

