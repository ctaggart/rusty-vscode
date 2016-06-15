#!/bin/sh -e
# https://github.com/dlsniper/docker-intellij/blob/master/Dockerfile
curl -o /tmp/intellij.tar.gz https://download-cf.jetbrains.com/idea/ideaIC-2016.1.3.tar.gz
mkdir -p /opt/intellij
tar -xf /tmp/intellij.tar.gz --strip-components=1 -C /opt/intellij
rm /tmp/intellij.tar.gz
# https://www.jetbrains.com/help/idea/2016.1/managing-enterprise-plugin-repositories.html
# https://github.com/intellij-rust/intellij-rust#installation
echo '-Didea.plugin.hosts=https://plugins.jetbrains.com/plugins/nightly/8182;https://plugins.jetbrains.com/plugins/nightly/8195' >> /opt/intellij/bin/idea.vmoptions
