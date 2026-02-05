#!/bin/bash

echo "======== System Audit Report ========"
echo "Date: $(date)"
echo "-------------------------------------"

echo "---Disk Usage---"
df -h
echo "-------------------------------------"

echo "---Memory Usage---"
free -h
echo "-------------------------------------"

echo "---Running Processes---"
ps aux --sort=-%mem | head -n 10
systemctl list-units --type=service --state=running
echo "-------------------------------------"

echo "---Failed SSH Login Attempts---"
grep "Failed password" /var/log/auth.log | tail -n 10
echo "-------------------------------------"