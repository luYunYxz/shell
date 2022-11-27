#!/usr/bin/env bash

#计算传入传输的阶乘,并对计算出来的结果进行科学计算

fac=1
rank=1

while [[ $rank -le $1 ]]
do
	fac=$( $fac * $rank )
	rank=$(($rank + 1))

done

#对数据进行格式化

result=$(echo $fac | sed '{
:start
s/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/
t start
}'
)

echo $result
