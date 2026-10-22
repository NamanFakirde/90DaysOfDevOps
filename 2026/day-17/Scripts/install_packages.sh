#!/bin/bash

<<usage
- Define list of package to loop over it
- check if package is installed or not
- prints status accordingly
usage

for package in nginx curl wget
do
        if dpkg -s $package &>/dev/null;then
                echo "STATUS: $package already installed!"
        else
                echo "STATUS: $package not installed"
                echo "=== INSTALLING PACKAGE ===="
                sudo apt install $package -y &>/dev/null
                echo "STATUS: $package successfully installed!"
        fi
done
