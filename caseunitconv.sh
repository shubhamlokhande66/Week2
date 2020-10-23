#!/bin/bash -x
case $option in
   1)echo "Enter the length"
     read length
     inch=`echo "scale=3; $length*12" | bc -l`
     echo "$length feet : $inch inch";;

   2)echo "Enter the length"
     read length
     meter=`echo "scale=3; $length/3.281"|bc -l`
     echo "$length feet = $meter meter";;

   3)echo "Enter the length"
     read length
     feet=`echo "scale=3; $length/12"|bc -l`
     echo "$length inch = $feet feet";;

   4)echo "Enter the length"
     read length
     feet=`echo "scale=3; $length*3.281"|bc -l`
     echo "$length meter = $feet feet";;

   *)echo "Please provide valid input";;
esac
