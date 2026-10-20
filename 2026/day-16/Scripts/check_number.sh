#!/bin/bash

read -p "Enter a number: " Num

if [ $Num -gt 0 ];then
        echo "Positive Number"
elif [ $Num -lt 0 ]; then
        echo "Negative Number"
else
        echo "Number is ZERO"
fi
