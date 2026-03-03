# Security Rationale

> **日本語版:** [06-セキュリティ上の理由.md](06-セキュリティ上の理由.md)

This document explains the reasoning behind each major hardening decision. Understanding the “why” behind each change is essential for maintaining and adapting the baseline.

## SSH Hardening
- **Disable root login**: Prevents direct compromise of the most privileged account.
- **Disable password authentication**: Eliminates brute-force and credential-stuffing risks.
- **Enforce key-based authentication**: Stronger, non-interactive authentication method.
- **Restrict SSH permissions**: Ensures that only authorized users can modify key material.

## Firewall Controls
- **Enable firewalld**: Provides a dynamic, manageable firewall layer.
- **Limit exposed services**: Reduces attack surface by allowing only necessary ports.
- **Default deny posture**: Ensures new services are not exposed unintentionally.

## System Parameter Hardening
- **Kernel restrictions**: Protects sensitive memory and pointer information.
- **Reverse path filtering**: Helps prevent IP spoofing.
- **Network stack tuning**: Reduces risk of certain network-based attacks.

## Audit Logging
- **Expanded audit rules**: Improves visibility into authentication and system changes.
- **Persistent logging**: Ensures logs survive reboots and can be reviewed later.
- **Accountability**: Supports incident response and compliance requirements.

## Operational Considerations
- Hardening must balance security with usability.
- Each change should be validated to avoid service disruption.
- Documentation ensures reproducibility and maintainability.