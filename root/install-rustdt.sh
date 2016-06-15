#!/bin/sh -e
export JAVA_HOME=/opt/jdk
export PATH=$JAVA_HOME/bin:$PATH
/opt/eclipse/eclipse -nosplash -consolelog -clean \
  -application org.eclipse.equinox.p2.director \
  -installIU com.github.rustdt.feature.group \
  -repository http://rustdt.github.io/releases/
