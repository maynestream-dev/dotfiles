#!/bin/sh

function install_rustup() {
  rustup-init -y -q --no-modify-path
  source "${XDG_DATA_HOME}/cargo/env"
}

if ! command -v rustup > /dev/null 2>&1; then
  install_rustup
elif [ ! $(rustup toolchain list | wc -l) -gt 0 ]; then
  install_rustup
fi

echo "Rustup installed: $(rustup toolchain list)"
