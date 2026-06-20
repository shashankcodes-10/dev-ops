# this file all the basic concept of array 



#!/bin/bash


servers=("web" "app" "dev")

#printing element by index
echo "${servers[0]}"
echo "${servers[1]}"
echo "${servers[2]}"

#print all element of array
echo "${servers[@]}"

#print length of array
echo "${#servers[@]}"

#print specific value 

echo "${servers[@]:0:2}"

#using loop in array

for i in ${servers[@]}
do
	echo "$i"
done

