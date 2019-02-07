#! /usr/bin/env sh

SSH_KEY_PATH=/root/.ssh/id_rsa
SSH_AUTHORIZED_KEYS_PATH=/root/.ssh/authorized_keys
SSH_AUTHORIZED_KEYS_URL="https://raw.githubusercontent.com/korczis/server-atomic/master/fs/root/.ssh/authorized_keys"

# Slow the RAID resync down
# https://serverfault.com/questions/216508/how-to-interrupt-software-raid-resync
sysctl -w dev.raid.speed_limit_max=1000

# Generate key if not exists
if [[ ! -f ${SSH_KEY_PATH} ]]; then
    ssh-keygen -N "" -f ${SSH_KEY_PATH} -t rsa -b 4096
fi

# Create authorized_keys if not exists
if [[ ! -f ${SSH_AUTHORIZED_KEYS_PATH} ]]; then
    curl -Lf ${SSH_AUTHORIZED_KEYS_URL} > ${SSH_AUTHORIZED_KEYS_PATH}
fi

# And now, run the ansible
