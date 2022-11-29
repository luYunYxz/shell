#!/usr/bin/env bash

if [ $(grep -c "greep" facebook.txt) -eq 0 ]; then
	#echo "hello World"
	echo " greep" >> facebook.txt
fi
