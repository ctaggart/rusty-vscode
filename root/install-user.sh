#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
apt-get update \
&& apt-get install -y \
    curl ca-certificates unzip sudo nano \
    build-essential file \
&& useradd -m vscode -s /bin/bash \
&& adduser vscode sudo \
&& echo 'vscode ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
&& echo 'if [ -f ~/.bashrc ]; then source ~/.bashrc; fi' >> ~/.bash_profile
