Next Topic: AWK

Suppose:

employees.csv

name,salary
Shashank,60000
Rahul,55000
Amit,50000

Question:

How would you print only employees whose salary is greater than 55000?

This is where AWK becomes much more powerful than cut.

#-------------------------------------------------------------------------------------------------------

we have already used AWK like:

awk '{print $1}'

and

awk 'NR==2 {print $5}'

Now let's learn the most important AWK feature:

Field Separator (-F)

Suppose:

employees.csv

name,salary
Shashank,60000
Rahul,55000
Amit,50000

Comma-separated.

Tell AWK to use comma as separator:

awk -F',' '{print $1}' employees.csv

Output:

name
Shashank
Rahul
Amit
Print Salary Column
awk -F',' '{print $2}' employees.csv

Output:

salary
60000
55000
50000
Conditions in AWK

This is where AWK becomes powerful.

Print employees with salary greater than 55000:

awk -F',' '$2 > 55000 {print $1}' employees.csv

Output:

Shashank

AWK reads:

$2 > 55000

and only prints matching rows.




# -------------------------------------------------------------------------------------------------------


Write an AWK command that prints:

Total Salary = 235000

Hint:

AWK can do calculations:

sum += $2


awk -F',' 'NR>1 {sum += $2} END {print "Total Salary =", sum}' employees.csv

Output:

Total Salary = 235000
New Concepts Learned
NR>1

Skip header row.

sum += $2

Accumulate values.

END { ... }

Execute after reading the whole file.

Interview Relevance

This type of AWK question is much more realistic than math loops.

Examples:

awk '{sum += $5} END {print sum}'

Total memory used.

awk '$3 > 80'

Find servers with CPU > 80%.

awk -F',' '{print $1,$3}'

Extract specific CSV columns.


#-----------------------------------------------------------------------------------------------------------------------



Next Challenge

Using:

name,salary
Shashank,60000
Rahul,55000
Amit,50000
Priya,70000

Write an AWK command that prints:

Average Salary = 58750

Hint:

You need:

sum
count
END




#!/bin/bash

awk -F',' 'NR>1 {sum += $2; count++} END {print "Average Salary =", sum/count}' employees.csv





#-----------------------------------------------------------------------------------------------------------------




















