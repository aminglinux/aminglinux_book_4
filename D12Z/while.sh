#! /bin/bash

a=5
while [ $a -ge 1 ]; do
    echo $a
    a=$[$a-1]
done

