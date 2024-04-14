#!/bin/sh

set -e

if [[ -z "$DOTFILES" ]]; then
  echo '$DOTFILES var must be set'
  exit 1
fi

cd "$DOTFILES"

source pretty-log

# Set macOS defaults
macos/set-defaults.sh

# Set macOS hostname
macos/set-hostname.sh

# use install base CLI tools
macos/install-xcode.sh

# install Intel app compatability tooling
macos/install-rosetta.sh
