#!/bin/bash

INPUT=" "
while [ "$INPUT" != "q" ]
do
  echo "please enter some text (or q to quit): "
  read INPUT
  
  # checking if text entered was the exit command
  if [ "$INPUT" == "q" ] 
  then
    echo "quitting..."
  else
    echo "you typed ${INPUT}"
  fi
done
