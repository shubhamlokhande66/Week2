#!/bin/bash -x
declare -A dice
 for (( i=1;i<=6;i++ ))
 do
 dice+=([$i]=0)
 done
echo ${dice[@]}
 echo ${!dice[@]}
 vaild=1
r=0
 while [ $vaild -gt 0 ]
do
((r++))
 roll=$(( RANDOM % 6 +1 ))
 echo "$r Roll is : $roll "
((dice[$roll]++))
if [ ${dice[$roll]} -eq 10 ]
then
break
fi
done
echo ""
echo -e "Dice_value\tcounting"
echo ""
for (( i=1;i<=6;i++ ))
do
echo -e "$i\t\t${dice[$i]} "
done
echo ""
echo "maximum times got: $roll"
min=${dice[1]}
roll=1
for (( i=2;i<=6;i++ ))
do
if [ ${dice[$i]} -lt $min ]
then
min=${dice[$i]}
roll=$i
fi
done
echo "minimum times get: $roll"
