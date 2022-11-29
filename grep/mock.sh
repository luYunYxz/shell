#!/usr/bin/env bash

for((i=1;i<=3;i++))
do
	echo "This is $i file" >> txt$i.txt
	echo "this file contain some import infomation" >> txt$i.txt
	
done
