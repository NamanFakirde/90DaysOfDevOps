#!/bin/bash

set -euo pipefail

sys_info(){
        echo "=== SYSTEM & OS INFO ==="
        echo "hostname  : $(hostname)"
        echo "Kernel    : $(uname -r)"
        echo "OS        : $(lsb_release -ds)"
        echo
}

system_uptime(){
        echo "=== System uptime ==="
        uptime
        echo
}

disk_usage(){
        echo "=== Top 5 Disk Usage ==="
        df -h |sort -hr -k5 | head -n 6
        echo
}

memory_usage(){
        echo "=== Memory Usage ==="
        free -h | awk 'NR==2 {print "Used: " $3 " | Free: " $4 " | Available: " $7}'
        echo
}

top_cpu_processes(){
        echo " === Top 5 CPU Processes ==="
        ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
        echo
}

main(){
        sys_info
        system_uptime
        disk_usage
        memory_usage
        top_cpu_processes
}

main
