#!/usr/bin/env bash

# Installs

sudo pacman -Syu
sudo pacman -S nvim kitty alacritty firefox chromium brave base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay plover-git

mkdir ~/.config/alacritty
mkdir ~/.config/kitty
mkdir ~/.config/nvim


mv ~/dotfiles/vim/* ~/.config/nvim/

