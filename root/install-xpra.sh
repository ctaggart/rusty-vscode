#!/bin/sh
# https://xpra.org/
# https://github.com/retog/docker-x11-xpra/blob/master/Dockerfile
export DEBIAN_FRONTEND=noninteractive
curl https://winswitch.org/gpg.asc | apt-key add - \
&& echo "deb http://winswitch.org/beta/ xenial main" > /etc/apt/sources.list.d/winswitch.list \
&& apt-get install -y --no-install-recommends xpra