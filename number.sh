#!/bin/bash -x
echo "please enter a single digit number"
read digitnum
if [ $digitnum -eq 1 ]
then
echo "unit"
elif [ $digitnum -eq 10 ]
then
echo "ten"
elif [ $digitnum -eq 100 ]
then
echo "hundred"
elif [ $digitnum -eq 1000]
then
echo "tousand"
else
echo "a number is two digit number"
fi;
