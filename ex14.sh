#!/bin/sh

myfunc()
{
  echo "\$1 is $1"
  echo "\$2 is $2"
  # cannot change $1 inside a function - we'd have to say:
  # 1="Goodbye Cruel" which is not a valid syntax. However, we can
  # change $a:
  a="Goodbye Cruel"
}

# Main script starts here
a=Hello
b=World

# this will cause the below echos to print "Hello World" as $a 
# will remain unchanged since myfunc will be called in a new shell
# --------------
# myfunc $a $b | tee ex14_out.txt

# this will cause the below echos to print "Goodbye Cruel World"
# --------------
myfunc $a $b

# final output
echo "a is $a"
echo "b is $b"
