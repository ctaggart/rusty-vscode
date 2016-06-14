#!/bin/sh -e
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y curl ca-certificates unzip sudo nano
useradd -m vscode -s /bin/bash
adduser vscode sudo
echo 'vscode ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
echo 'if [ -f ~/.bashrc ]; then source ~/.bashrc; fi' >> /home/vscode/.bash_profile
chown -R vscode:vscode /home/vscode
