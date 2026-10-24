#!/bin/bash

<<usage
- function that takes name as argument and prints hello name
- function that takes two number and prints their addition
usage

greet() {
        echo "Hello, $1"
}

add(){
        sum=$(($1+$2))
        echo "Addition is: $sum"
}

greet Naman

add 5 10
