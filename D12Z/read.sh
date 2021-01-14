#! /bin/bash

## Using 'read' in shell script.
## Aming 2020-03-02.

read -p "Please input a number: " x
read -p "Please input another number: " y
sum=$[$x+$y]
echo "The sum of the two numbers is: $sum"

