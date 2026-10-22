#!/bin/bash

<<usage
- Checks if running as root or not
- Define list of package to loop over it
- check if package is installed or not
- prints status accordingly
usage

if [ $EUID -ne 0 ];then
        echo "Please run as ROOT!"
        exit 1
else
        echo "Running as ROOT!"
fi

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
