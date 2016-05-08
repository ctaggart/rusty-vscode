#!/bin/sh
dir=$(cd `dirname "$0"` && pwd)
# publisher extension version
# https://marketplace.visualstudio.com/items?itemName=saviorisdead.RustyCode
$dir/install-vscode-extension.sh saviorisdead RustyCode 0.14.3
cargo install racer
cargo install rustfmt
echo 'export PATH=~/.cargo/bin:$PATH' >> ~/.bash_profile
git clone https://github.com/rust-lang/rust.git --branch 1.8.0 --depth 1
echo 'export RUST_SRC_PATH=~/rust/src' >> ~/.bash_profile