#!/bin/bash

for package in nginx curl wget
do
        if dpkg -s $package &> /dev/null; then
                echo "STATUS - $package Already installed!"
        else
                echo "STATUS - $package Not installed"
                echo "=== INSTALLING $package ==="
                sudo apt install $package -y &>/dev/null
                echo "STATUS - $package Installed successfully!"
        fi
done
