# this the code to read a file line by line



#!/bin/bash


while read lines
do
	echo $lines

done<$1

