tap "homebrew/bundle"
tap "homebrew/cask-fonts"
tap "homebrew/services"

# recursively read and use all brewfiles (except this one) in all subdirectories - win!
# idea taken from here https://github.com/Homebrew/homebrew-bundle/issues/521#issuecomment-513551124
Dir.glob(File.join(File.dirname(__FILE__), '*', '**', 'Brewfile')) do |brewfile|
    eval(IO.read(brewfile), binding)
end

brew "awscli"
brew "bat"
brew "btop"
brew "fzf"
brew "gh"
brew "git"
brew "mas"
brew "neofetch"
brew "neovim"
brew "nmap"
brew "python-tk@3.12"
brew "python@3.9"
brew "reattach-to-user-namespace"
brew "rustup-init"
brew "stow"
brew "tmux"
brew "watch"
brew "whalebrew"
brew "xdg-ninja"
brew "zsh"
brew "zsh-history-substring-search"

cask "1password"
cask "1password-cli"
cask "alacritty"
cask "amethyst"
cask "font-ubuntu-mono-nerd-font"
cask "font-ubuntu-nerd-font"
cask "obsidian"
cask "orbstack"
cask "qflipper"
cask "sanesidebuttons"
cask "spotify"
cask "steam"
cask "vlc"
cask "warp"

mas "1Password for Safari", id: 1569813296
mas "AdBlock", id: 1402042596
mas "DuckDuckGo Privacy for Safari", id: 1482920575
mas "MarkDownload - Markdown Web Clipper", id: 1554029832
mas "Microsoft Excel", id: 462058435
mas "Microsoft OneNote", id: 784801555
mas "Microsoft Outlook", id: 985367838
mas "Microsoft PowerPoint", id: 462062816
mas "Microsoft Word", id: 462054704
mas "OneDrive", id: 823766827
mas "Prime Video", id: 545519333
mas "TripMode", id: 1513400665
mas "‎WhatsApp", id: 310633997
