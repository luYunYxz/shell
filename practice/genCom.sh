#!/usr/bin/env bash

for i in {a..z};
do
	for j in {a..z};
	do
		echo $i$j >> allCom.txt
	done

done
