#!/bin/sh

# displays username in []
echo -n "What is your name [ `whoami` ] "
read myname

# if input is nothing, set var = `whoami`
if [ -z "$myname" ]; then
  myname=`whoami`
fi

# print $myname
echo "Your name is : $myname"

# print $myname or if it has no value, print username
echo "Your name is : ${myname:-`whoami`}"
