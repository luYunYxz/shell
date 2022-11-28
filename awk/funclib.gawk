function myPrint()
{
	printf "%-16s - %s \n", $1, $4
}

function myRandom(limit)
{
	return int(limit * rand())
}

function printThird()
{
printf $3
}
