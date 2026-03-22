#!/bin/bash

set -euo pipefail

sys_info(){

        echo "=== SYSTEM & OS INFO ==="
        hostname
        uname -r
        which bash
        echo
}

uptime_func(){

        echo "=== SYSTEM UPTIME ==="
        uptime
        echo
}

disk_usage_func(){

        echo "=== DISK USAGE ==="
        df -h | sort -hr -k5 | head -n 5
        echo
}

mem_usage_func(){
        echo "=== MEMORY USAGE ==="
        free -h | awk 'NR==2 {print "USED: "$3 " | Free: "$4 " | Available: " $7}'
        echo
}

process_func(){
        echo "=== Top 5 CPU consuming processes ==="
        ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
        echo
}

main() {
        sys_info
        uptime_func
        disk_usage_func
        mem_usage_func
        process_func
}

main
