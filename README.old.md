# server-atomic

Server powered by Project Atomic

## Prerequisites

- [CentOS-Atomic-Host-Installer.iso](http://cloud.centos.org/centos/7/atomic/images/CentOS-Atomic-Host-Installer.iso)

## Getting started


**Install git**

```
# Add git to base image
$ rpm-ostree pkg-add git

# Reboot to new image
$ systemctl reboot
```

**Get automation scripts**

```
# Clone this repository
$ git clone https://github.com/korczis/server-atomic.git

# Change directory
$ cd server-atomic
```


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

**Install Ansible**

```
# Add epel repository
$ rpm-ostree pkg-add epel-release

# Reboot
$ systemctl reboot

# Add ansible package
$ rpm-ostree pkg-add ansible

$ systemctl reboot
```

## Links

- https://www.dedoimedo.com/computers/ubuntu-beaver-slow-boot.html
- https://www.cyberciti.biz/tips/linux-raid-increase-resync-rebuild-speed.html
