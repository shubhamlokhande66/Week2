#!/bin/bash -x

a=10
b=20
c=30
val=`expr $a + $b \* $c`
echo "a + b *c  : $val"
val=`expr $a % $b + $c`
echo "a % b + c : $val"
val=`expr $c + $a / $b`
echo "c + a / b : $val"
val=`expr $a \* $b + $c`
echo "a * b  + c : $val"
arr=( -610 40 30 230  )
min=0 max=0
for i in ${arr[@]}; do
    (( $i > max || max == 0)) && max=$i
    (( $i < min || min == 0)) && min=$i
done
echo "min=$min
max=$max"
fi;
