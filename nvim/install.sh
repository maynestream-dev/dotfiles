#!/bin/bash

if [[ ! -d "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim ]]; then
  info "Cloning nvim kickstart"
  git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
fi
