#!/bin/sh -e
# https://www.rust-lang.org/downloads.html
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -y build-essential file
curl -sSf https://static.rust-lang.org/rustup.sh | sh
