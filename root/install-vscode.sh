#!/bin/sh
# http://code.visualstudio.com/

# vscode-amd64.deb
# stable https://go.microsoft.com/fwlink/?LinkID=760868
# insider https://vscode-update.azurewebsites.net/latest/linux-deb-x64/insider

export DEBIAN_FRONTEND=noninteractive
apt-get install -y --no-install-recommends curl unzip \
  libgtk2.0-0 libgconf-2-4 libnss3 libasound2 libxtst6 libnotify4 \
&& curl -o vscode-amd64.deb -L https://go.microsoft.com/fwlink/?LinkID=760868 \
&& dpkg -i vscode-amd64.deb
