# Before and After Comparison

This document summarizes key configuration changes made during the hardening process. Full configuration files are stored in the `configs/` directory.

## SSH Configuration
### Before
- `PermitRootLogin yes`
- `PasswordAuthentication yes`
- `PubkeyAuthentication yes` (default)
- Default permissions on SSH directories

### After
- `PermitRootLogin no`
- `PasswordAuthentication no`
- `PubkeyAuthentication yes`
- Secure permissions applied to `~/.ssh` and authorized keys

## Firewall Configuration
### Before
- firewalld disabled or permissive
- Multiple services exposed by default

### After
- firewalld enabled and active
- Only required services allowed
- Default zone tightened

## System Parameters
### Before
- Default kernel parameters
- No explicit hardening applied

### After
- Updated `/etc/sysctl.conf` with security-focused values
- Reloaded kernel parameters using `sysctl -p`

## Audit Logging
### Before
- auditd running with default rules

### After
- Custom audit rules applied
- Logging expanded for authentication and system changes