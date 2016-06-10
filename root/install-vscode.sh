#!/bin/sh -e
# http://code.visualstudio.com/

# vscode-amd64.deb
# stable https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable
# insider https://vscode-update.azurewebsites.net/latest/linux-deb-x64/insider

export DEBIAN_FRONTEND=noninteractive
apt-get install -y curl unzip git-core \
  libgtk2.0-0 libgconf-2-4 libnss3 libasound2 libxtst6 libnotify4
curl -o vscode-amd64.deb -L https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable
dpkg -i vscode-amd64.deb
rm vscode-amd64.deb
