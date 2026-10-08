#!/bin/bash

echo "===== PROCESS CHECK ====="

process="bash"

if pgrep "$process" > /dev/null; then
    echo "$process process is running"
else
    echo "$process process is NOT running"
fi
