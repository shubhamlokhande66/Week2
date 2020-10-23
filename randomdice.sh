#!/bin/bash -x
echo "first dice number:"
read dice1
echo "second dice number:"
read dice2
echo $((1+RANDOM%6))
sum=$(($dice1 + $dice2))
echo "the sum of  dice number is :  $sum "
fi;
