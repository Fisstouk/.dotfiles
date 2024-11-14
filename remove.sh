#!/bin/zsh

stow -D nvim --target=${HOME}/.config
stow -D alacritty --target=${HOME}/.config
stow -D tmux --target=${HOME}
stow -D zshrc --target=${HOME}
