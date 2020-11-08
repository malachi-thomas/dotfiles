#!/usr/bin/env bash

# Installs
sudo pacman -Syu
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
