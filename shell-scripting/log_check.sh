#!/bin/bash

echo "===== LOG ERROR CHECK ====="

logfile="/var/log/syslog"

if [ -f "$logfile" ]; then
    echo "Checking for errors..."

    errors=$(grep -i "error" "$logfile" | wc -l)

    echo "Total errors found: $errors"
else
    echo "Log file not found"
fi
