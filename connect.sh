#!/bin/sh -e
# create a custom config file
if [ ! -f ~/.x2goclient/vscode ]; then
  mkdir -p ~/.x2goclient;
  sc=~/.x2goclient/vscode;
  now=`date +%Y%m%d%H%M%S000`;
  echo "[$now]" > $sc;
  echo "name=vscode" >> $sc;
  echo "host=127.0.0.1" >> $sc;
  echo "user=vscode" >> $sc;
  echo "sshport=2222" >> $sc;
  echo "key=~/.ssh/vscode" >> $sc;
  echo "command=LXDE" >> $sc;
fi
# this is the default install path on Mac OS X
export PATH=/Applications/x2goclient.app/Contents/MacOS:$PATH
x2goclient --session-conf=~/.x2goclient/vscode --session=vscode --hide --close-disconnect --add-to-known-hosts
