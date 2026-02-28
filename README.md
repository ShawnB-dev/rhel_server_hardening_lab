# RHEL Server Hardening Lab

A reproducible security hardening lab for Red Hat Enterprise Linux–based systems.  
This project demonstrates practical Linux administration, SSH hardening, firewall configuration, auditing, and baseline security controls.

## Scope
This lab applies a minimal but realistic hardening baseline suitable for small enterprise or homelab environments.

- SSH hardening (no root login, no password auth, key‑only)
- Firewall configuration
- System parameter tuning
- Audit logging
- Service review and cleanup

## Repository Structure
- `docs/` — full walkthrough and explanations  
- `configs/` — before/after configuration files  
- `scripts/` — automation helpers  
- `logs/` — sample outputs  

## Quickstart
1. Review the documentation in `docs/`.
2. Inspect the configuration changes in `configs/`.
3. Run the hardening script (optional):  
   ```bash
   sudo bash scripts/apply-hardening.sh
   ```

4. Validate the system state:

    ```Bash
    sudo bash scripts/verify-hardening.sh
    ```

## Documentation
Full walkthrough begins at:
```
docs/01-overview.md
```
For the full walkthrough of the lab, see:
[docs/02-project-overview.md](docs/02-project-overview.md)

## 日本語

このリポジトリは、RHEL 系 Linux サーバーのセキュリティ強化手順を再現可能な形でまとめたものです。
SSH 設定、ファイアウォール、システムパラメータ、監査ログなどの基本的なハードニングを含みます。
詳細は docs/ ディレクトリをご覧ください。
