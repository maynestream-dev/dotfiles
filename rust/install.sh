#!/bin/sh

if command -v rustup > /dev/null; then
  if [[ ! $(rustup toolchain list | wc -l) -gt 0 ]]; then
    rustup-init -y -q
  fi
fi

echo "Rustup installed: $(rustup toolchain list)"
