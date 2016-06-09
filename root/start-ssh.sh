#!/bin/sh
# Create ssh "client" key
# http://stackoverflow.com/a/20977657

if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -q -t rsa -N "" -f ~/.ssh/id_rsa
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
fi

echo "Use this private key to log in:"
cat ~/.ssh/id_rsa 

# Start sshd
sudo mkdir -p /var/run/sshd
sudo /usr/sbin/sshd -D
