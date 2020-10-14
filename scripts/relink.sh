#!/usr/bin/env bash
# mkdir
mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua
mkdir ~/.config/vim
mkdir ~/.config/bspwm
mkdir ~/.config/i3
mkdir ~/.moc
mkdir ~/.config/polybar
mkdir ~/.config/alarcitty
mkdir ~/.config/kitty
mkdir ~/.config/sxhkd
mkdir ~/.config/vifm
rm -r ~/.i3

# nvim 
ln -f ~/dotfiles/nvim/* ~/.config/nvim
ln -f ~/dotfiles/nvim/lua/* ~/.config/nvim/lua
# vim
ln -f ~/dotfiles/vim/vimrc

ln -f ~/dotfiles/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
ln -f ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -f ~/dotfiles/i3/config ~/.config/i3/config
ln -f ~/dotfiles/moc/config ~/.moc/config
ln -f ~/dotfiles/polybar/config ~/.config/polybar/config
ln -f ~/dotfiles/polybar/launch.sh ~/.config/polybar/launch
ln -f ~/dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -f ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
sudo ln -f ~/dotfiles/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
ln -f ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -f ~/dotfiles/vifm/vifmrc ~/.config/vifm/vifmrc
