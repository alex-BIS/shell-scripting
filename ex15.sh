#!/bin/bash

# func1 & func2 will also accept "yes" or "ye" etc. as input
# however, func3 & func4 will not as their if statements 
# only use single [..] rather than the improved [[..]]

add_record()
{
  # to-do
  echo "this is the add_record function"
}

# allows choice of each function
selecta()
{
  echo "Select function (1/2/3/4)"
  read CHOICE
  case "$CHOICE" in
    1) func1 ;;
    2) func2 ;;
    3) func3 ;;
    4) func4 ;;
  esac
}

func1()
{
  echo "Would you like to enter another record? (Y/N)"
  read CONTINUE

  # set bash to be case-insensitive
  shopt -s nocasematch
  
  if [[ "$CONTINUE" = "Y"* ]]; then
    add_record
  else
    exit
  fi
}

func2()
{
  echo "Would you like to enter another record? (Y/N)"
  read CONTINUE
  
  case "$CONTINUE" in
    "Y"*)
      add_record ;;
    "y"*)
      add_record ;;
    "N")
      exit ;;
    "n")
      exit ;;
  esac
}

func3()
{
  echo "Would you like to enter another record? (Y/N)"

  # could also do | tr "[:lower:]" "[:upper:]"
  read CONTINUE
  CONTINUE=$(echo "$CONTINUE" | tr "[a-z]" "[A-Z]")
 
  if [ "$CONTINUE" = "Y" ]; then
    add_record
  else
    exit
  fi
}

func4()
{
  echo "Would you like to enter another record? (Y/N)"
  read CONTINUE
  
  # converting input to uppercase
  if [ "${CONTINUE,,}" = "y"* ]; then
    add_record
  else
    exit
  fi
}

# start of script
selecta
