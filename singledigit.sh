#!/bin/bash -x
echo "please enter a single digit number"
read digitnum
if [ $digitnum -eq 1 ]
then
echo "one"
else
echo "a number is two digit number"
fi;
