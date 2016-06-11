#!/bin/sh -e
# https://www.rust-lang.org/downloads.html
# https://www.rustup.rs/
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -y build-essential file
#curl -sSf https://static.rust-lang.org/rustup.sh | sh
curl https://sh.rustup.rs -sSf | sh -s -- -y
echo 'export PATH=~/.cargo/bin:$PATH' >> ~/.bashrc
