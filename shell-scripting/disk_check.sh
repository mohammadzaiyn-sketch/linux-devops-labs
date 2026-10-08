#!/bin/bash

echo "===== DISK USAGE ====="

df -h /

echo
echo "===== DISK USAGE WARNING ====="

usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$usage" -gt 80 ]; then
    echo "WARNING: Disk usage is above 80%"
else
    echo "Disk usage is normal"
fi
