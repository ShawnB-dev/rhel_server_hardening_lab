# Screenshots

This page explains each screenshot included in the `/screenshots` directory and how it relates to the hardening process.

---

## System Preparation

![rhelhardeningdnfupdateandupgrade.png](../screenshots/rhelhardeningdnfupdateandupgrade.png)  
System updated using `dnf update` and `dnf upgrade` to ensure the baseline is applied to a fully patched environment.

![rhelhardeninggetenforce.png](../screenshots/rhelhardeninggetenforce.png)  
SELinux status checked using `getenforce` to confirm the system is enforcing or permissive before applying hardening steps.

---

## User and Access Management

![rhelhardeninguseradd.png](../screenshots/rhelhardeninguseradd.png)  
Creation of a non-root administrative user to support secure SSH access and avoid direct root login.

---

## SSH Hardening

![rhelhardeningsshdconfig.png](../screenshots/rhelhardeningsshdconfig.png)  
Updated `/etc/ssh/sshd_config` showing hardened SSH settings such as disabling root login and password authentication.

---

## Firewall Configuration

![rhelhardeningfirewall.png](../screenshots/rhelhardeningfirewall.png)  
`firewall-cmd --list-all` output confirming that firewalld is active and only required services are exposed.

---

## System Validation

![rhelhardeningsystemreport.png](../screenshots/rhelhardeningsystemreport.png)  
System report summarizing the state of key services and configurations after applying the hardening baseline.

![rhelhardeningscriptresult.png](../screenshots/rhelhardeningscriptresult.png)  
Output from the hardening script showing successful application of SSH, firewall, and sysctl changes.

---