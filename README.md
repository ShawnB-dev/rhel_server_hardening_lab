# Virtualization Lab: Multi-VM Network Environment

This project demonstrates a small virtualized network built using VirtualBox and RHEL 10. The goal is to simulate a basic enterprise environment with multiple servers communicating over an internal network.

## Objectives
- Create multiple VMs in VirtualBox
- Configure internal networking
- Assign static IP addresses
- Test connectivity between machines
- Configure optional DNS/DHCP services
- Document the environment clearly

## Environment
- VirtualBox 7.x
- RHEL 10 (Server)
- Rocky Linux 9 (Client)
- Internal Network: 192.168.10.0/24

## Network Layout
- VM1 (Server): 192.168.10.10
- VM2 (Client): 192.168.10.20
- VM3 (Optional DNS/DHCP): 192.168.10.5

## Steps Performed
1. Created VMs and assigned internal network adapters
2. Configured static IPs on each machine
3. Verified connectivity using ping and traceroute
4. Installed and configured DNS/DHCP (optional)
5. Documented configuration files and troubleshooting steps

## Lessons Learned
- How VirtualBox internal networking works
- How to configure static IPs in RHEL
- How DNS and DHCP interact in a small network
- Importance of clear documentation

## Future Improvements
- Add monitoring server (Nagios/Zabbix)
- Add firewall rules between VMs
- Add automation with Ansible

### System Updates
- Appled all available RHEL 10 updates using dnf.