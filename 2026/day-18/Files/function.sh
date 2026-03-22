#!/bin/bash

greet(){
        echo "Hello, $1"
}

add(){
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        c=$((num1 + num2))
        echo "Addition of two number is: $c"
}

greet naman

add
