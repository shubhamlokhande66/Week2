
#!/bin/bash -x
declare -a array
for (( arrayvalue=1; arrayvalue<=10; arrayvalue++ ))
do
array[$arrayvalue]=$(( RANDOM%900 + 100 ))
done
echo ${array[@]}
 max=0
secmax=0
for key in "${!array[@]}";
do
if [[ array[$key] -gt $max ]]
then
secmax=$max
max="${array[$key]}"
fi
done
echo $secmax
min=1000
secmin=1000
for key in "${!array[@]}";
do
if [[ array[$key] -lt $min ]]
then
secmin=$min
 min="${array[$key]}"
fi
done
echo $secmin
