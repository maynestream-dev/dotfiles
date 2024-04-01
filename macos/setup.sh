#!/bin/sh

set -e

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

source bin/link-file
source bin/pretty-log

# Set macOS defaults
macos/set-defaults.sh

# Set macOS hostname
macos/set-hostname.sh

# use install base CLI tools
macos/install-xcode.sh

# install Intel app compatability tooling
macos/install-rosetta.sh
