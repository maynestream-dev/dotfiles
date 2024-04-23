#!/bin/bash

set -e

if [[ -z "$DOTFILES" ]]; then
  echo '$DOTFILES var must be set'
  exit 1
fi

cd "$DOTFILES"

source bin/pretty-log

if [ "$(uname -s)" != "Darwin" ]
then
  info "Not a macos system"
  exit 0
fi

# Set macOS defaults
macos/set-defaults.sh

# Set macOS hostname
macos/set-hostname.sh

# use install base CLI tools
macos/install-xcode.sh

# install Intel app compatability tooling
macos/install-rosetta.sh
