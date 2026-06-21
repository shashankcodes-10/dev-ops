# Concept: Search and Replace

# Create a file:

# config.txt

# ENV=dev
# DB_HOST=localhost
# APP_NAME=myapp

# Now run:

# sed 's/dev/prod/' config.txt

# Output:

# ENV=prod
# DB_HOST=localhost
# APP_NAME=myapp
# Understanding the Syntax
# sed 's/old/new/'

# Where:

# s = substitute
# old = text to find
# new = replacement text

# Example:

# sed 's/localhost/192.168.1.10/' config.txt
# Important Point

# This does not modify the file.

# It only prints the changed output to the screen.

# File still contains:

# ENV=dev
# DB_HOST=localhost
# APP_NAME=myapp
# Modify the File Permanently

# Use:

# sed -i 's/dev/prod/' config.txt

# Now the file itself is updated.

# Very Common DevOps Usage

# Change image tag in a deployment file:

# Before:

# image: myapp:v1

# After:

# image: myapp:v2

# Command:

# sed -i 's/v1/v2/' deployment.yaml

# The g means:

# Replace all occurrences on a line, not just the first one.

#-------------------------------------------------------------------------------------------------------------

# Challenge #1 (sed)

# Create a script that:

# Takes a filename as $1
# Replaces the word:
# dev

# with:

# prod
# Prints the modified content to the terminal.
# Do not use -i yet (don't modify the file).
# Example

# Input file:

# ENV=dev
# APP_ENV=dev

# Output:

# ENV=prod
# APP_ENV=prod
# Requirements
# Use $1
# Use sed
# No loops
# Don't modify the original file


#!/bin/bash 
sed 's/dev/prod/g' "$1"


#-----------------------------------------------------------------------------------------------------------------


# Next sed Challenge

# Create a file:

# server=dev
# database=dev
# env=dev

# Write a script that:

# Takes the filename as $1
# Permanently updates the file
# Replaces:
# dev

# with:

# prod


#!/bin/bash

sed -i 's/dev/prod/g' "$1"

