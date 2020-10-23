#!/bin/bash -x
tossedcoin=$((RANDOM%2==0))
if [ $tossedcoin -eq 1 ]
then
echo " head"
else
echo "tail"
fi;
