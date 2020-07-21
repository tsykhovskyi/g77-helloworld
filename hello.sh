#!/bin/bash
#
g77 -c hello.f
if [ $? -ne 0 ]; then
  echo "Errors compiling hello.f"
  exit
fi
#
g77 hello.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading hello.o"
  exit
fi
rm hello.o
#
mv a.out hello
./hello > hello_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running hello"
  exit
fi
rm hello
#
echo "Program output written to hello_output.txt"
