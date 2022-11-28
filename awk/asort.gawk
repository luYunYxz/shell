BEGIN{
var["a"] = 1
var["g"] = 2
var["m"] = 3
var["u"] = 4
var["z"] = 5
asort(var,test)
for(i  in test)
{
printf "Index : %d -- %d \n",i,test[i]
}
}
