# Validation and Testing

Validation ensures that each hardening step is applied correctly and that the system remains functional. This document summarizes the checks performed after applying the baseline.

## SSH Validation
- Confirm syntax correctness:
```bash
sshd -t
```
- Verify that password authentication is disabled:
```bash
grep PasswordAuthentication /etc/ssh/sshd_config
```
- Confirm root login is disabled:
```bash
grep PermitRootLogin /etc/ssh/sshd_config
```
- Test login using a non-root user with SSH

## Firewall Validation

- Confirm firewalld is active:
```bash
systemctl status firewalld
```
- Review allowed services:
```bash
firewall-cmd --list-all
```
- Ensure unnecessary ports are not exposed.

## System Parameter Validation

- Reload and verify sysctl parameters:
```bash
sysctl -p
```
- Spot-check key kernel parameters:
```bash
sysctl kernel.kptr_restrict sysctl net.ipv4.confall.rp_filter
```
## Audit Logging Validation

-Confirm auditd is running:
```bash
systemctl status auditd
```
- Review recent audit logs:
```bash
ausearch -ts recent
```
- Ensure custom audit rules are loaded:
```bash
auditctl =l
```
## Functional Testing

- Confirm system services still operate normally.

- Validate that SSH access works as expected.

- Confirm no unintended service disruptions occurred.