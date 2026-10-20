#!/bin/bash

read -p "Enter the service name: " service

read -p "Do you want to check the status? (y/n) " choice

if [[ "$choice" = "y" || "$choice" = "Y" ]]; then
        if systemctl is-active "$service" > /dev/null; then
                echo "Service $service is Active"
        else
                echo "Service $service is Inactive"
        fi
elif [[ "$choice" = "n" || "$choice" = "Y" ]]; then
        echo "Skipped.."
else
        echo "Invalid Input"
fi