#!/usr/bin/env bash

i=0

while [ $i -le 5 ]
do
	echo "The line number is $i" >> data3.txt
	i=$((i+1))

done
