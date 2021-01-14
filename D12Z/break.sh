#!/bin/bash
for i in `seq 1 5`
do
    echo $i
    if [ $i == 3 ]
    then
        break
    fi
    echo $i
done
echo aaaaaaa

