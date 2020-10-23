#!/bin/bash -x
tempconversion(){
case $choice in
        1)echo "Enter temperature (C) :"
         read tc
          tf=`awk 'BEGIN{print '$tc' *1.8+32}'`
          echo "$tc C = $tf F";;
        2)echo "Enter temperature (F):"
        read tf
        tc=`awk 'BEGIN{print ('$tf'-32)*0.5555}'`
        echo "$tf = $tc C";;

        *)echo  " Please select 1 or 2 only ";;
esac
}
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
read choice
tempconversion $choice

