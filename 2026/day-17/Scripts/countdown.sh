#!/bin/bash

<<usage
- Takes input from user
- Count down to 0
- print Done! at the end
usage

read -p "Enter the starting number for countdown: " num

while [ $num -ge 0 ]
do
        echo $num
        ((num--))
done
echo "Done!"
