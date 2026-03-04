# How To Reproduce This Lab

### *Rebuilding the RHEL Hardening Environment from Scratch*

This guide explains how to recreate the full RHEL hardening lab environment used in this project. It covers VM setup, baseline configuration, applying the hardening steps, and validating the results. The goal is to provide a reproducible workflow that mirrors real-world operational procedures.

## 1. Prepare the Virtual Machine

### Create a new VM
- **OS:** RHEL 10 recommended.
- **CPU:** 2 vCPUs
- **Memory:** 2-4 GB
- **Disk:** 20 GB
- **Network:** NAT or Bridged (SSH access required)

### Install RHEL
- Choose *Minimal Install*
- Enable *Standard* repositories
- Create an initial root password

After installation, log in as `root` on the console.

---

## 2. Update and Patch the System
Run the initial update to ensure the system is fully patched before applying any hardening steps:
```bash
dnf update -y
dnf upgrade -y
```
Reboot if the kernel was updated:
```bash
reboot
```
---
## 3. Create a Non-Root Administrative User
Create a dedicated admin user to avoid direct root login:
```bash
useradd adminuser
passwd adminuser
```
Add the user to the wheel group:
```bash
usermod -aG wheel adminuser
```
---
## 4. Configure SSH Access
### Enable key-based authentication
On your workstation:
```bash
ssh-keygen -t ed25519
ssh-copy-id adminuser@<server-ip>
```
Disable password authentication (later applied via hardening config)

---
## 5. Clone This Repository Onto The VM
Install Git:
```bash
dnf install -y git
```
Clone the repo:
```bash
git clone https://github.com/<your-username>/rhel_server_hardening_lab.git
cd rhel_server_hardening_lab
```
The repo structure will look like:
```markdown
configs/
scripts/
docs/
screenshots/
```
---
## 6. Apply the Hardening Baseline
Run the provided hardening script:
```bash
sudo bash scripts/apply-hardening.sh
```
This script applies:
- Hardened SSH configuration
- Firewalld rules
- Sysctl kernel parameters
- Permissions and ownership adjustments
---
## 7. Validate the Hardening
Run the validation script:
```bash
sudo bash scripts/verify-hardening.sh
```
This checks:
- SSH configuration syntax
- Firewalld active rules
- Kernel parameters
- Auditd status
- System service states
Compare the output with the screenshots in:
```markdown
docs/07-screenshots.md
```
---
## 8. Review Before / After Configurations
The `configs/` directory contains:
- `sshd_config.before`/`sshd_config.after`
- `sysctl.before`/`sysctl.after`

Use `diff` to compare:
```bash
diff -u configs/sshd_config.before configs/sshd_config.after
```
This demonstrates exactly what changed during the hardening process.

---
## 9. Explore the Documentation
The `/docs` folder provides:
- Hardening steps
- Validation procedures
- Security rationale
- Before / after comparisons
- Screenshot explanations
- Japanese translations

This mirrors how internal security baselines are documented in enterprise environments.

---
## 10. Reset or Rebuild the Lab (Optional)
To repeat the process:
- Revert the VM snapshot
**or**
- Destroy and recreate the VM
**or**
- Reset configs manually using the `*.before` files

This allows for repeated practice or demonstration.

---