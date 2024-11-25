#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

set -e

if [[ -z "$DOTFILES" ]]; then
  echo '$DOTFILES var must be set'
  exit 1
fi

cd "$DOTFILES"

source bin/pretty-log

# Check for Homebrew
if [[ ! $(which brew) ]]
then
  info "Install homebrew"

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

info "Update homebrew"
brew update

info "Installing brew bundle dependencies"
brew bundle
