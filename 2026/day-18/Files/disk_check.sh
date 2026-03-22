#!/bin/bash

check_disk(){
        echo "===DISK SPACE==="
        df -h /
}

check_memory(){
        echo "===MEMORY SPACE==="
        free -h
}

check_disk
check_memory
