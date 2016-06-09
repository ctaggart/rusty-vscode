#!/bin/sh
docker run --name=vscode -itd -p 2222:22 --security-opt seccomp=unconfined ctaggart/rusty-vscode
sleep 3
docker logs vscode
