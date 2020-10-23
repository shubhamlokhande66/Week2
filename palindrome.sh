#!/bin/bash -x
isPalindrome(){
s=0
rev=""
temp_var=$n
while [ $n -gt 0 ]
do
    s=$(( $n % 10 )) #here last digit is separated
    n=$(( $n / 10 ))
    rev=$( echo ${rev}${s} )
done
if [ $temp_var -eq $rev ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}

isPrime(){
flag=0
for (( i=2; $i<= $n/2; ++i ))
do
   if [ $(($n%$i)) -eq 0  ]
   then
       flag=1
   fi
done

if [ $flag -eq 0 ]
then
     echo " Number is Prime number"
else
    echo "Number not a prime number"
fi

}

echo "1.To check number \n2 2.To check prime  \n 3.To check prime and  palindrome "
read options
case $options in
1)echo "enter the number"
read n
isPalindrome $n ;;

2) echo "enter the number"
read n
isPrime $n ;;
3) echo "enter the  number "
read n
isPolindrome $n
isPrime $n ;;
*)please give vaild input ;;
esac

