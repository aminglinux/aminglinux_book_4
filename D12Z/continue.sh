#!/bin/bash
for i in `seq 1 5`
do
    echo $i
    if [ $i == 3 ]
    then
        continue
    fi
    echo $i
done
echo $i

