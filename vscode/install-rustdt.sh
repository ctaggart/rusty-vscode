#!/bin/sh -e
sudo /root/install-java.sh
echo 'export JAVA_HOME=/opt/jdk' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
sudo /root/install-eclipse.sh
echo 'export PATH=/opt/eclipse:$PATH' >> ~/.bashrc
sudo /root/install-rustdt.sh
