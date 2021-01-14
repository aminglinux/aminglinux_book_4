#! /bin/bash

function sum()
{
    sum=$[$1+$2]
    echo $sum
}

sum $1 $2

