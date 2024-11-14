#!/bin/zsh

# Install paq, Neovim package manager
git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim

# Stow config files
stow nvim --target=${HOME}/.config
stow alacritty --target=${HOME}/.config/alacritty
stow tmux --target=${HOME}
stow zshrc --target=${HOME}
