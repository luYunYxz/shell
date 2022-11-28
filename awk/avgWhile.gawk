{
total=0
i=0

while(i<NF)
{
	total += $i
	i++;
}
aver=total /  NF

print FNR,": Average: ", aver
}
