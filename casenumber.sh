#!/bin/bash -x
echo "enter a number"
read n
case $n in
1) echo "unit" ;;
2) echo "one" ;;
*) echo "enter value 1 : 10 : 100" ;;
 *) echo "enter vaule 10 , 100, 1000" ;;
esac	
