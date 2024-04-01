#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

set -e

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

source bin/link-file
source bin/pretty-log

# Check for Homebrew
if test ! $(which brew)
then
  echo "› Install homebrew"

  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

echo "› Update homebrew"
brew update

exit 0
