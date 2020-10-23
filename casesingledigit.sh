#!/bin/bash -x
echo "enter a number"
read n
case $n in
1) echo "one" ;;
2) echo "two" ;;
*) echo "enter value between 1 to 2" ;;
esac
