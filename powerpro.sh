#!/bin/bash -x
echo -ne "Enter the power for 2:" 
read a

r=1
t=0
l=256

while [ $a -ne $c]
do
   r=$(expr $r \* 2 )
   c=$(expr $c + 1 )

done

if [ $r -gt $l ]
then
     echo " num >256 "
else
     echo "$result "

fi
