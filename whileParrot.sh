#!/bin/bash

INPUT=" "
while [ "$INPUT" != "q" ]
do
  echo "please enter some text (or q to quit): "
  read INPUT
  
  # checking if text entered was the exit command
  if [ "$INPUT" = "q" ] ; then
    echo "quitting..."
    elif [ "$INPUT" = "some text" ] ; then
      echo "wow you think you're funny, huh?"
    else
      echo "you typed ${INPUT}"
  fi
done
