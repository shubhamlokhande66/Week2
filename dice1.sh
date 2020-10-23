declare -A dice
for (( i=1;i<=6;i++ ))
do
dice+=([$i]=0)
done
#Initialze Associative array every element zero
echo ${dice[@]}
echo ${!dice[@]}
#dice=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)
valid=1
r=0
while [ $valid -gt 0 ]
do
((r++)) #Keep track how many times roll need
roll=$(( RANDOM % 6 +1 )) #store 1 - 6
echo "$r Roll is : $roll " #print dice front value
((dice[$roll]++)) # Increment the value in the associative array
if [ ${dice[$roll]} -eq 10 ]
then
break # If any value reache to 10 then it
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
