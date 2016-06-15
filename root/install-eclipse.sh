#!/bin/sh -e
# http://download.eclipse.org/eclipse/downloads/
# http://download.eclipse.org/eclipse/downloads/drops4/R-4.5.2-201602121500/download.php?dropFile=eclipse-platform-4.5.2-linux-gtk-x86_64.tar.gz
# mirror 272, United States - OSU Open Source Lab
mkdir -p /opt/eclipse
curl -L -o eclipse.tgz http://ftp.osuosl.org/pub/eclipse/eclipse/downloads/drops4/R-4.5.2-201602121500/eclipse-platform-4.5.2-linux-gtk-x86_64.tar.gz
tar xf eclipse.tgz -C /opt/eclipse --strip-components 1
