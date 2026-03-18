#!/bin/bash

read -p "Enter the service name: " service

read -p "Do you want to check the service status: " choice

if [[ "$choice" = "y" || "$choice" = "Y" ]]; then
        if systemctl is-active "$service" > /dev/null; then
                echo "Service $service is Active"
        else
                echo "Service $service is inactive"
        fi
elif [[ "$choice" = "n" || "$choice" = "N" ]]; then
        echo "Skipped"
else
        echo "Invalid input (y/n)"
fi
