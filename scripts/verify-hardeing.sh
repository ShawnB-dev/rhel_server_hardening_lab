#!/bin/bash
echo "[*] Validating SSH configuration..."
sshd -t && echo "SSH config OK"

echo "[*] Checking firewall..."
firewall-cmd --list-all

echo "[*] Checking sysctl..."
sysctl -a | grep -E 'kernel|net'