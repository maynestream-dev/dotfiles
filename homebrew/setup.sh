#!/bin/sh
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

source pretty-log

# Check for Homebrew
if test ! $(which brew)
then
  info "Install homebrew"

  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

info "Update homebrew"
brew update

info "Installing brew bundle dependencies"
brew bundle
