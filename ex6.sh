#!/bin/bash
echo "Please enter your surname:"
read SNAME
echo
echo "Name | Surname | Email | Phone"
grep "$SNAME" addressBook.txt
