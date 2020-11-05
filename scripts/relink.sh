#!/usr/bin/env bash

# nvim
ln -f ~/.config/nvim/* ~/dotfiles/nvim
ln -f ~/.config/nvim/lua/* ~/dotfiles/nvim/lua

# zsh
ln -f ~/.zshenv ~/dotfiles/zsh/.zshenv

# espanso
ln -f ~/.config/espanso/default.yml ~/dotfiles/espanso/default.yml
ln -f ~/.config/espanso/user/* ~/.config/espanso/user

# i3
ln -f ~/.config/i3/* ~/dotfiles/i3

# kitty
ln -f ~/.config/kitty/* ~/dotfiles/kitty

# sxhkd
ln -f ~/.config/sxhkd/* ~/dotfiles/sxhkd

# vifm
ln -f ~/.config/vifm/* ~/dotfiles/vifm

# alacritty
ln -f ~/.config/alacritty/alacritty.yml ~/dotfiles/alacritty/alacritty.yml

# vscode
ln -f ~/.config/Code/User/settings.json ~/dotfiles/vscode
ln -f ~/.config/Code/User/keybindings.json ~/dotfiles/vscode
ln -f ~/.config/Code/User/snippets/* ~/dotfiles/vscode/snippets
