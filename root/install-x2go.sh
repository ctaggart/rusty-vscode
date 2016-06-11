#!/bin/sh -e
# installs x2go, lxde, & lightdm for debian 8 jessie
# http://wiki.x2go.org/doku.php/doc:installation:x2goserver
export DEBIAN_FRONTEND=noninteractive
apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E
echo "deb http://packages.x2go.org/debian jessie main" > /etc/apt/sources.list.d/x2go.list
apt-get update
apt-get install -y x2go-keyring
apt-get update
apt-get install -y x2goserver x2goserver-xsession
apt-get install -y --no-install-recommends lxde-core xdg-utils
apt-get install -y lightdm lxterminal dbus-x11

# adjust lixcb.so.1 so VSCode launches http://stackoverflow.com/a/37695964/23059
sed -i 's/BIG-REQUESTS/_IG-REQUESTS/' /usr/lib/x86_64-linux-gnu/libxcb.so.1

# disable lxpolkit on login which throws 'No session for pid <pid>' error
sed -i '/\[Session\]/a polkit/command=' /etc/xdg/lxsession/LXDE/desktop.conf
