#!/bin/bash

echo "===== SERVICE CHECK ====="

service="ssh"

if systemctl is-active --quiet "$service"; then
    echo "$service is running"
else
    echo "$service is NOT running"
fi
