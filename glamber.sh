#!/bin/bash -x
echo "enter glamber's problem"
startamount=100
win=0
lose=0
while [ $startamount - lt 200 ] && [$startamount -gt 0 ]
do
number=$
((Random%2))
if [ $number -eq 0 ]
then 
((win++))
((startamount++))
else 
((lose++))
((startamount--))
fi
done
echo " number of times won : $win"
echo "number of times lost : $lose"
