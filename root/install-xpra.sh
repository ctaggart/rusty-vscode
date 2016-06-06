#!/bin/sh
# https://xpra.org/
# http://winswitch.org/downloads/debian-repository.html?dist_select=jessie
# install Xpra patches to xserver-xorg-video-dummy
# https://github.com/ctaggart/xserver-xorg-video-dummy/issues/1
export DEBIAN_FRONTEND=noninteractive
curl https://winswitch.org/gpg.asc | apt-key add - \
&& echo "deb http://winswitch.org/ jessie main" > /etc/apt/sources.list.d/winswitch.list \
&& apt-get update \
&& apt-get install -y xpra \
&& curl -L -O https://github.com/ctaggart/xserver-xorg-video-dummy/releases/download/1_0.3.7-1.1/xserver-xorg-video-dummy_0.3.7-1.1_amd64.deb \
&& dpkg -i xserver-xorg-video-dummy_0.3.7-1.1_amd64.deb