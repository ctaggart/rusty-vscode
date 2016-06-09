#!/bin/sh
# https://www.google.com/linuxrepositories/
# https://wiki.debian.org/UnofficialRepositories
curl https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
apt-get update
apt-get install -y google-chrome-stable
