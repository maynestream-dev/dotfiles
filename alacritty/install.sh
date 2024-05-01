#!/bin/zsh

ALACRITTY_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/alacritty"
mkdir -p "$ALACRITTY_HOME"
[[ ! -d "$ALACRITTY_HOME/themes" ]] && git clone https://github.com/alacritty/alacritty-theme "$ALACRITTY_HOME/themes"

 ln -s "$DOTFILES/alacritty/alacritty.toml" "$ALACRITTY_HOME"
