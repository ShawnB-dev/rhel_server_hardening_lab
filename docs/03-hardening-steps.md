# Hardening Steps

> **日本語版:** [03-ハードニング手順.md](03-ハードニング手順.md)

## SSH Configuration
- Disable root login  
- Disable password authentication  
- Enforce key‑based authentication  
- Set secure permissions on SSH directories  

## Firewall
- Enable firewalld  
- Allow only required services  
- Drop all other inbound traffic  

## System Parameters
- Kernel hardening via `/etc/sysctl.conf`  
- Disable unnecessary kernel modules  

## Auditing
- Enable auditd  
- Apply baseline audit rules  