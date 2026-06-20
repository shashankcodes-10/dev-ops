# When to Use cut

# Use cut when:

# ✅ Data has a fixed separator

# name,age,city

# or

# root:x:0:0

# Don't use cut when:

# ❌ You need calculations
# ❌ Complex text processing
# ❌ Pattern matching

# For those, use:

# awk
# sed
# grep

# instead.

# One-Minute Memory Trick

# CSV:

# Shashank,DevOps,60000

# Think:

# cut -d',' -f1

# ↓

# Shashank

# -d = split by comma

# -f1 = give first column

# That's 90% of what beginners need to know about cut.



#here is the script to print salary column from a file
#suppose the content of the file is 

# name,department,salary
# Shashank,DevOps,60000
# Rahul,Cloud,55000
# Amit,Testing,50000
# Priya,Developer,65000

#!/bin/bash

cut -d"," -f3 "$1" | tail -n +2

