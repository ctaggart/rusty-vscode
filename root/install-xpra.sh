#!/bin/sh
# https://xpra.org/
# http://winswitch.org/downloads/debian-repository.html?dist_select=jessie
export DEBIAN_FRONTEND=noninteractive
curl https://winswitch.org/gpg.asc | apt-key add - \
&& echo "deb http://winswitch.org/ jessie main" > /etc/apt/sources.list.d/winswitch.list \
&& apt-get update \
&& apt-get install -y xpra