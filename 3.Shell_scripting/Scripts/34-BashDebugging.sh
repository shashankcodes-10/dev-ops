Next Topic: Bash Debugging

Suppose:

#!/bin/bash

a=10
b=20

sum=$((a+b))

echo "$sum"

Run normally:

bash script.sh

Output:

30

Run with debugging:

bash -x script.sh

Output:

+ a=10
+ b=20
+ sum=30
+ echo 30
30

Now Bash shows every step it executes.

This is extremely useful when a script is failing.


#--------------------------------------------------------------------------------------------------------------------------



Another Way

Instead of:

bash -x script.sh

you can put:

#!/bin/bash

set -x

at the top of the script.

Example:

#!/bin/bash

set -x

a=10
b=20

sum=$((a+b))

echo "$sum"

Then:

bash script.sh

automatically shows debugging output.

Why DevOps Engineers Use It

Suppose this script fails:

#!/bin/bash

file="abc.txt"

cat "$file"

Output:

cat: abc.txt: No such file or directory

Run with:

bash -x script.sh

You see:

+ file=abc.txt
+ cat abc.txt
cat: abc.txt: No such file or directory

Now you immediately know which command failed.