#!/bin/bash
if [ $(id -u) == 0 ]; then 
        echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 
        free -m 
else
        echo "check your permissiion"
fi
