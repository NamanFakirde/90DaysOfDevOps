#!/bin/bash

read -p "Enter a file name: " file

if [ -f "$file" ]; then
        echo "File exits"
else
        echo "File not found"
fi
