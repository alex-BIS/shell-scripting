#!/bin/bash
echo "Please enter your surname:"
read SNAME
echo

# checking if surname entered contains chars in "Ssurname"
# if not, print the column headers otherwise it will do it on its own thru grep
if [ ! $SNAME == [Ssurname] ] ; then
  echo "Name|Surname|Email|Phone"
fi

# searching address book for entered surname
grep \|[a-zA-Z]*${SNAME}[a-zA-Z]*\| addressBook.txt
