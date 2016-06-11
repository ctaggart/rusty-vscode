#!/bin/sh -e
dir=$(cd `dirname "$0"` && pwd)
# publisher extension version
# https://marketplace.visualstudio.com/items?itemName=saviorisdead.RustyCode
mkdir -p ~/.config/Code/User
mkdir -p ~/.vscode/extensions
code --install-extension saviorisdead.RustyCode
cargo install racer
cargo install rustfmt
echo 'export PATH=~/.cargo/bin:$PATH' >> ~/.bashrc
git clone https://github.com/rust-lang/rust.git --branch 1.9.0 --depth 1
echo 'export RUST_SRC_PATH=~/rust/src' >> ~/.bashrc
