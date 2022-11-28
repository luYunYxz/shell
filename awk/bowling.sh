#!/usr/bin/env bash

for team in $(gawk -F, '{print $2}' scores.txt |uniq)
do
	gawk -v team=$team -F, 'BEGIN{total=0}{
		if(team == $2)
		{
			total = total + $3 + $4 + $5
			
		}
	} END{ 
	avg=total/6	
	printf "Total for %6s is %3d,the average %5.2f\n",team, total,avg}' scores.txt
done
