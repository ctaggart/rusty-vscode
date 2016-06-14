#!/bin/sh -e
# http://www.oracle.com/technetwork/java/javase/downloads/index.html
mkdir -p /opt/jdk
curl -L -o jdk.tgz -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz
tar xf jdk.tgz -C /opt/jdk --strip-components 1
#ln -s /opt/jdk/bin/* /usr/local/bin
