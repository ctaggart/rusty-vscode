#!/bin/sh -e
/opt/eclipse/eclipse -nosplash -consolelog -clean \
  -application org.eclipse.equinox.p2.director \
  -installIU com.github.rustdt.feature.group \
  -repository http://rustdt.github.io/releases/
