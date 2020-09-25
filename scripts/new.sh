#!/usr/bin/env bash

# Installs

sudo pacman -Syu
sudo pacman -S nvim kitty firefox chromium brave base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
