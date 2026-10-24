#!/bin/bash

<<usage
- function that checks disk usage of '/'
- function that checks free memory
- a main section that call both and prints results
usage

check_disk() {
        echo "Disk Usage"
        df -h / | awk 'NR==2 {print " Size: " $2, " Used: " $3, "Available: " $4}'
}


check_memory() {
        echo "Free Memory"
        free -h | awk 'NR==2 {print "  " $4 " free"}'
}

main(){
        check_disk
        check_memory
}

main

