#! /usr/bin/env sh

SSH_KEY_PATH=~/.ssh/id_rsa

# Slow the RAID resync down
# https://serverfault.com/questions/216508/how-to-interrupt-software-raid-resync
sysctl -w dev.raid.speed_limit_max=1000

# Generate key if not exists
if [[ ! -f ${SSH_KEY_PATH} ]]; then
    ssh-keygen -N "" -f ${SSH_KEY_PATH} -t rsa -b 4096
fi
