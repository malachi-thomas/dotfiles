#!/usr/bin/env bash
# all os
[ ! -d $HOME/.config/nvim/lua ] && mkdir -p ~/.config/nvim/lua
[ ! -d $HOME/.config/nvim/UltiSnips ] && mkdir -p ~/.config/nvim/UltiSnips
# [ ! -d $HOME/.config/.moc ] && mkdir ~/.config/.moc
ln -f ~/dotfiles/nvim/* ~/.config/nvim
ln -f ~/dotfiles/nvim/lua/* ~/.config/nvim/lua
ln -f ~/dotfiles/nvim/UltiSnips/* ~/.config/nvim/UltiSnips
ln -f ~/dotfiles/nvim/init.vim ~/.vimrc
ln -f ~/dotfiles/zsh/.zshenv ~/.zshenv
ln -f ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

if [ ! -d /mnt/c ] ;then

  # if unix
  [ ! -d $HOME/.config/i3 ] && mkdir -p ~/.config/i3
  [ ! -d $HOME/.config/vifm ] && mkdir -p ~/.config/vifm
  [ ! -d $HOME/.config/kitty ] && mkdir -p ~/.config/kitty
  [ ! -d $HOME/.config/sxhkd ] && mkdir -p ~/.config/sxhkd
  [ ! -d $HOME/.config/espanso ] && mkdir -p ~/.config/espanso
  [ ! -d $HOME/.config/alacritty ] && mkdir -p ~/.config/alacritty
  ln -f ~/dotfiles/espanso/default.yml ~/.config/espanso/default.yml
  ln -f ~/dotfiles/espanso/user/* ~/.config/espanso/user
  ln -f ~/dotfiles/i3/config ~/.config/i3/config
  ln -f ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
  ln -f ~/dotfiles/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
  ln -f ~/dotfiles/vifm/vifmrc ~/.config/vifm/vifmrc
  ln -f ~/dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
else

  # if windows
  [ ! -d /mnt/c/User/malac/AppData/Roaming/espanso/user ] && mkdir -p /mnt/c/User/malac/AppData/Roaming/espanso/user
  ln -f ~/dotfiles/espanso/default.yml /mnt/c/Users/malac/AppData/Roaming/espanso
  ln -f ~/dotfiles/espanso/user/* /mnt/c/Users/malac/AppData/Roaming/espanso/user
fi


# ln -f ~/dotfiles/moc/config ~/.moc/config
