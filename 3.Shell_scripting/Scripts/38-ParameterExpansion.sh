# 1. Get Variable Value
# name="shashank"

# echo ${name}

# Output:

# shashank


# 2. Length of Variable
# name="shashank"

# echo ${#name}

# Output:

# 8

# Very useful.


# 3. Remove From End (Shortest Match)
# file="app.log"

# echo ${file%.log}

# Output:

# app

# Used often.


# 4. Remove From Start (Shortest Match)
# path="/home/shashank/file.txt"

# echo ${path#/home/}

# Output:

# shashank/file.txt


# 5. Replace Text
# env="dev"

# echo ${env/dev/prod}

# Output:

# prod


# 6. Default Value
# echo ${name:-Guest}

# If:

# name=""

# Output:

# Guest


# 7. Substring
# name="shashank"

# echo ${name:0:4}

# Output:

# shas


# 8. Uppercase
# name="shashank"

# echo ${name^^}

# Output:

# SHASHANK


# 9. Lowercase
# name="SHASHANK"

# echo ${name,,}

# Output:

# shashank


# 10. Remove Last Character
# disk="42%"

# echo ${disk%\%}

# Output:

# 42