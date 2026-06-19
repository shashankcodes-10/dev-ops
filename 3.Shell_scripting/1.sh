# Shell Scripting Challenge #1
# Problem Statement

# Write a shell script that:

# Asks the user for their name.
# Asks the user for their age.
# Displays the following output:
# Hello Shashank!
# You are 21 years old.
# Requirements
# Use read to take input.
# Store values in variables.
# Use variable expansion ($variable) in the output.
# Add proper comments in the script.
# Bonus (Optional)

# If the age entered is less than 18, print:

# You are a minor.

# Otherwise print:

# You are an adult.



#!/bin/bash/

read -p "ENTER YOUR NAME" name

read -p "ENTER YOUR AGE" age

if [ $age -ge 18 ] 
then  echo "hello ${name} !"
      echo "You are ${age} years old"
else
       	
   echo "hello ${name} !"
   echo "You are a  minor"
fi