#!/bin/bash -x
n=11

for i in {1..100};
do 
echo $i;
done

twice=$(($n+11))
$n++
echo $twice
