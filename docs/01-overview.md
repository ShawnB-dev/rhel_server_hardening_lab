# Overview

> **日本語版はこちら:** [docs/01-概要.md](01-概要.md)

This lab demonstrates a practical, reproducible security hardening process for a RHEL-based server. It focuses on SSH configuration, firewall rules, system parameters, auditing, and service review. The goal is to create a minimal but realistic baseline suitable for small enterprise or homelab environments.

The project is structured to separate high-level concepts from detailed walkthroughs. The full narrative of the lab is available in `02-project-overview.md`, while this document provides a concise summary of the scope and intent.

## Objectives
- Improve default SSH security posture.
- Restrict network exposure using firewalld.
- Apply kernel and system parameter hardening.
- Enable auditing for accountability and traceability.
- Document each change in a reproducible format.

## Lab Philosophy
The hardening steps follow a “baseline-first” approach:
- Make small, controlled changes.
- Validate after each step.
- Preserve before/after configurations.
- Document reasoning for every modification.

This mirrors how real-world infrastructure teams manage security baselines.