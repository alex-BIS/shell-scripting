#!/bin/bash
echo "Please enter your surname:"
read SNAME
echo
if [ ! $SNAME == [Ssurname] ] ; then
  echo "Name|Surname|Email|Phone"
fi
grep \|[a-zA-Z]*${SNAME}[a-zA-Z]*\| addressBook.txt
