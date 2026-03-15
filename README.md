# RHEL Server Hardening Lab

---

## Documentation / ドキュメント

**English**
- [01 Overview](docs/01-overview.md)
- [02 Project Overview](docs/02-project-overview.md)
- [03 Hardening Steps](docs/03-hardening-steps.md)
- [04 Validation & Testing](docs/04-validation.md)
- [05 Before/After Comparison](docs/05-before-after.md)
- [06 Security Rationale](docs/06-security-rationale.md)
- [07 Screenshots](docs/07-screenshots.md)
- [08 How To Reproduce This Lab](docs/08-how-to-reproduce.md)

**日本語**
- [01 概要](docs/01-概要.md)
- [02 プロジェクト概要](docs/02-プロジェクト概要.md)
- [03 ハードニング手順](docs/03-ハードニング手順.md)
- [04 検証とテスト](docs/04-検証とテスト.md)
- [05 Before/After 比較](docs/05-Before-After比較.md)
- [06 セキュリティ上の理由](docs/06-セキュリティ上の理由.md)
- [07 スクリーンショット](docs/07-スクリーンショット.md)
- [08 再現手順](docs/08-再現手順.md)



## 日本語の説明

このリポジトリは、RHEL 系 Linux サーバーに対して実施したセキュリティハードニング手順を、再現可能な形でまとめたものです。詳細は上記の日本語ドキュメントをご覧ください。

---

A reproducible security hardening lab for Red Hat Enterprise Linux–based systems.  
This project demonstrates practical Linux administration, SSH hardening, firewall configuration, auditing, and baseline security controls.

## Why This Project Matters

This lab demonstrates practical Linux administration and security hardening skills that are directly relevant to real-world IT infrastructure roles. The project shows:

- Ability to apply and validate security baselines  
- Familiarity with SSH, firewalld, sysctl, and auditd  
- Documentation discipline and reproducibility  
- Bilingual communication (English and Japanese)  
- Real execution, verified through screenshots and before/after configs  

These are core competencies expected in enterprise environments worldwide.

## Scope
This lab applies a minimal but realistic hardening baseline suitable for small enterprise or homelab environments.

- SSH hardening (no root login, no password auth, key‑only)
- Firewall configuration
- System parameter tuning
- Audit logging
- Service review and cleanup

## Architecture

```script
┌──────────────────────┐        SSH (Key Authentication)        ┌────────────────────────┐
│  Admin Workstation       │  ------------------------------------> │       RHEL Hardened Server │
│  (Windows / Linux)       │                                        │       (VM or Bare Metal)   │
└──────────────────────┘                                        └────────────────────────┘
```
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