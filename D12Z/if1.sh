#! /bin/bash

read -p "Please input your score: " a
if ((a<60)); then
    echo "You didn't pass the exam."
fi

