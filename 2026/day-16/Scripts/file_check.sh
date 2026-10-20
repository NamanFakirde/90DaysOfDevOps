#!/bin/bash

read -p "Enter a file path: " file_path

if [ -f $file_path ];then
        echo "Exists"
else
        echo "Does Not Exist"
fi
