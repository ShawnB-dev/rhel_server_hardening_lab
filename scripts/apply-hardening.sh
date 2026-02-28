#!/bin/bash
set -e

echo "[*] Applying SSH hardening..."
cp configs/sshd_config.after /etc/ssh/sshd_config
systemctl restart sshd

echo "[*] Applying firewall rules..."
# Example placeholder
# firewall-cmd --permanent --add-service=ssh
# firewall-cmd --reload

echo "[*] Applying sysctl parameters..."
cp configs/sysctl.after /etc/sysctl.conf
sysctl -p

echo "[*] Hardening complete."