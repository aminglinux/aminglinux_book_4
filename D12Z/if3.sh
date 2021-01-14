#! /bin/bash

read -p "Please input your score: " a
if ((a<60)); then
     echo "You didn't pass the exam."
elif ((a>=60)) && ((a<85)); then
     echo "Good! You pass the exam."
else
     echo "Very good! Your score is very high!"
fi

