# this is the script to read a csv file is , seperated

#!/bin/bash

if [[ ! -f "$1" ]]
then
    echo "File not found"
    exit 1
fi



tail -n +2 "$1" | 
	while IFS="," read col1 col2 col3
	do
		echo "$col1 $col2 $col3"
	done

<<method2

	
awk 'NR!=1 {print}' $1 | 
	while IFS="," read col1 col2 col3
         do
                echo "$col1 $col2 $col3"
        done
method2
	
