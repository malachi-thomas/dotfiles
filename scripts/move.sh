#!/usr/bin/env bash

mkdir ~/.config/nvim
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
mkdir ~/.config/kitty
mkdir ~/.config/alacritty
mkdir ~/.moc
mkdir ~/dotfiles/moc/theams
mkdir ~/.config/plover
mkdir ~/.config/polybar
mkdir ~/.config/i3
mkdir ~/.config/zsh-plugins

mv ~/dotfiles/nvim/* ~/.config/nvim
mv ~/dotfiles/bspwm/* ~/.config/bspwm
mv ~/dotfiles/sxhkd/* ~/.config/sxhkd
mv ~/dotfiles/kitty/* ~/.config/kitty
mv ~/dotfiles/plover/* ~/.config/plover
mv ~/dotfiles/polybar/* ~/.config/polybar
mv -f ~/dotfiles/zsh/.zshrc ~/.zshrc
mv ~/dotfiles/i3/* ~/.config/i3
mv ~/dotfiles/moc/* ~/.moc
mv ~/dotfiles/alacritty/* ~/.config/alacritty

cd ~/.config/nvim/plugged/bracey.vim
npm install --prefix server

cd ~/.config/zsh-plugins
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting

