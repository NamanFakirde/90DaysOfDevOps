#!/bin/bash

<<usage
- Accepts a name as argument
- prints hello name
- if no argument is passed prints its usage
usage

if [ -z "$1" ]; then
        echo "Usage: .greet.sh <name>"
        exit 1
else
        echo "Hello, $1"
fi
