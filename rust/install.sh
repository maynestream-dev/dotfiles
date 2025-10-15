#!/bin/bash

function install_rustup() {
  rustup-init -y -q
  source "${XDG_DATA_HOME}/cargo/env"
}

if ! command -v rustup > /dev/null 2>&1; then
  install_rustup
elif [ ! $(rustup toolchain list | wc -l) -gt 0 ]; then
  install_rustup
fi

echo "Rustup installed: $(rustup toolchain list)"

mkdir -p $RUSTUP_HOME/completions
rustup completions zsh > $RUSTUP_HOME/completions/_rustup