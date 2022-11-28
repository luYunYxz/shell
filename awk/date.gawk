BEGIN{
now=systime()
day = strftime("%A,%B %d,%Y",now)
print day
}
