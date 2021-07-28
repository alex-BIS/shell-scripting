#!/bin/sh
echo -n "What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
  myname=`whoami`
fi
echo "Your name is : $myname"
echo "Your name is : ${myname:-`whoami`}"
