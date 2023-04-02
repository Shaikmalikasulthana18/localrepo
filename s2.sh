#!/bin/bash

echo "Checking for missing security updates..."
echo "======================================="

yum check-update --security | grep -v '^$' | grep -v '^[[:space:]]'

echo ""
echo "System information"
echo "=================="
echo "Kernel information: $(uname -r)"
echo "Hostname: $(hostname)"
echo "CPU information: $(lscpu)"
echo "Memory information: $(free -h)"
echo "Disk usage: $(df -h)"

echo "Done!"

