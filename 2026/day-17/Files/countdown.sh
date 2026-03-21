#!/bin/bash

<<Usage
   - Takes a number from the user
   - Counts down to 0 using a while loop
   - Prints "Done!" at the end
Usage

read -p "Enter a starting number for countdown: " num

while [ $num -ge 0 ]
do
        echo $num
        ((num--))
done

echo "Done!"
