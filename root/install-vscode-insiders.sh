#!/bin/sh -e
# https://code.visualstudio.com/insiders
# https://code.visualstudio.com/blogs/2016/05/23/evolution-of-insiders
# run `code-insiders` instead of `code`
curl -o vscode-amd64.deb -L https://vscode-update.azurewebsites.net/latest/linux-deb-x64/insider
dpkg -i vscode-amd64.deb
rm vscode-amd64.deb

