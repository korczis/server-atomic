# server-atomic

Server powered by Project Atomic

## Prerequisites

- [CentOS-Atomic-Host-Installer.iso](http://cloud.centos.org/centos/7/atomic/images/CentOS-Atomic-Host-Installer.iso)

## Getting started

**Install cockpit**

```
# Pull remote package
$ atomic pull cockpit/ws

# Install package
$ LABEL=cockpit atomic install cockpit/ws

# Run package
$ atomic run cockpit/ws

# Add firewall rule
$ firewall-cmd --zone=public --add-port=9090/tcp --permanent

# Reload firewall rules
$ firewall-cmd --reload

# Reboot
$ systemctl reboot
```

## Links

- https://www.dedoimedo.com/computers/ubuntu-beaver-slow-boot.html
- https://www.cyberciti.biz/tips/linux-raid-increase-resync-rebuild-speed.html
