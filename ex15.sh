
# func1 & func2 will also accept "yes" or "ye" etc. as input
# however, func3 & func4 will not as their if statements 
# only use single [..] rather than the improved [[..]]

add_record()
{
  
  NAME=""
  while [[ $(wc -w <<< "$NAME") -le 1 ]] ; do
    read -p "Enter full name: " NAME
  done
 
  read -p "Enter email address: " EMAIL
  read -p "Enter phone number: " PHONE

  # concatenate inputs to a single variable
  ENTRY="$(echo "$NAME" | cut -d " " -f1)|$(echo "$NAME" | cut -d " " -f2)|${EMAIL}|${PHONE}"
  
  # output the entry to addressBook file
  echo "$ENTRY" >> addressBook.txt
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
  echo
  echo "Would you like to enter another record? (Y/N)"
  read CONTINUE
  
  case "$CONTINUE" in
    "Y"*)
      echo
      add_record ;;
    "y"*)
      echo
      add_record ;;
    "N")
      exit ;;
    "n")
      exit ;;
  esac

  # calling itself
  func2
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
