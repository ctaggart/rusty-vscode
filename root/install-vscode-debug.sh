#!/bin/sh
dir=$(cd `dirname "$0"` && pwd)
# publisher extension version
# https://marketplace.visualstudio.com/items?itemName=webfreak.debug
mkdir -p ~/.config/Code/User
mkdir -p ~/.vscode/extensions
code --install-extension webfreak.debug
export DEBIAN_FRONTEND=noninteractive
apt-get install -y gdb
