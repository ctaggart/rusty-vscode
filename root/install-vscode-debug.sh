#!/bin/sh
dir=$(cd `dirname "$0"` && pwd)
# publisher extension version
# https://marketplace.visualstudio.com/items?itemName=webfreak.debug
$dir/install-vscode-extension.sh webfreak debug 0.8.1