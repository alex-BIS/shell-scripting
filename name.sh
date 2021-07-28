#!/bin/bash
echo "What is your name?"
read NAME
echo "Hello there, $NAME"
echo "File called ${NAME}_file created"
touch "${NAME}_file"
