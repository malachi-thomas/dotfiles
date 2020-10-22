#!/usr/bin/env bash

sudo pacman -Syu
sudo pacman -S base-devel 
sudo pacman -S yay 
sudo pacman -S polybar 
sudo pacman -S chromium 
sudo pacman -S firefox 
sudo pacman -S brave 
sudo pacman -S dmenu 
sudo pacman -S neovim 
sudo pacman -S moc 
sudo pacman -S kitty 
sudo pacman -S sxhkd 
sudo pacman -S python 
sudo pacman -S python-pip 
sudo pacman -S zsh 
sudo pacman -S npm
sudo pacman -S nodejs
sudo pacman -S feh
sudo pacman -S ttf-hack
sudo pacman -S xclip
sudo pacman -S bluez 
sudo pacman -S bluez-utils
sudo pacman -S blueman
sudo pacman -S qbittorrent
sudo pacman -S pulseaudio
sudo pacman -S gnome
sudo pacman -S ripgrep
sudo pacman -S input-wacom
sudo pacman -S xf86-input-wacom
sudo pacman -S alsa-utils
sudo pacman -S redshift
sudo pacman -S tmux

yay betterlockscreen
yay neovim-nightly
yay espanso
yay notify-osd-customizable


pip install togglCli
pip3 install pynvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
