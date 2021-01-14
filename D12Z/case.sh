#! /bin/bash

read -p "Input a number: " n
a=$[$n%2]
case $a in
  1)
         echo "The number is odd."
         ;;
  0)
          echo "The number is even."
          ;;
  *)
          echo "It's not a number!"
          ;;
esac

