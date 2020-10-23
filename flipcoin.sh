#!/bin/bash -x
echo "coin toss"
heads=0
tails=0
while [ $heads -lt 11 -a $tails -lt 11 ]
do
number=$((RANDOM%2))
if [[ $number -eq 0 ]]
then
((heads++))
echo $heads
else
((tails++))
echo $tails
fi
 done
