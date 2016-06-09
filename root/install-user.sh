#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
apt-get update \
&& apt-get install -y --no-install-recommends apt-utils \
&& apt-get install -y --no-install-recommends curl unzip sudo nano \
&& useradd -m vscode -s /bin/bash \
&& adduser vscode sudo \
&& echo 'vscode ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
