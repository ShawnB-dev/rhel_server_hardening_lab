# Validation and Testing

Validation ensures that each hardening step is applied correctly and that the system remains functional. This document summarizes the checks performed after applying the baseline.

## SSH Validation
- Confirm syntax correctness:

sshd -t

- Verify that password authentication is disabled:

grep PasswordAuthentication /etc/ssh/sshd_config

- Confirm root login is disabled:

grep PermitRootLogin /etc/ssh/sshd_config