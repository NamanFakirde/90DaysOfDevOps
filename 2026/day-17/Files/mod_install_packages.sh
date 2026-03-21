#!/bin/bash

if  [ "$EUID" -ne 0 ]; then
        echo "Please run as ROOT!"
        exit 1
else
        echo "Running as ROOT!"
fi

for package in nginx curl wget
do
        if dpkg -s $package &> /dev/null; then
                echo "STATUS - $package Already installed!"
        else
                echo "STATUS - $package Not installed"
                echo "=== INSTALLING $package ==="
                apt install $package -y &>/dev/null
                echo "STATUS - $package Installed successfully!"
        fi
done
