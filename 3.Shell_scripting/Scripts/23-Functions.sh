# Challenge

# Write a script that defines:

# check_disk()

# Inside the function:

# Get disk usage of /
# Print it

# Then call:

# check_disk

# at the end of the script.




#!/bin/bash

check_disk() {

  space=$( df -h / | awk 'NR==2 {print$5}'  )
  
   echo " The disk usage is $space"
}

check_disk
