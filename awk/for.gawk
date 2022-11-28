{
total=0
for(i=1;i<=NF;i++)
{
total= total + $i
}
avg=total / NF
print "Average : ", avg
}
