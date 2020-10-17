#!/usr/bin/env bash
# all os
[ ! -d $HOME/.config/nvim ] && mkdir ~/.config/nvim
[ ! -d $HOME/.config/nvim/lua ] && mkdir ~/.config/nvim/lua
[ ! -d $HOME/.config/nvim/UltiSnips ] && mkdir ~/.config/nvim/UltiSnips
[ ! -d $HOME/.config/.moc ] && mkdir ~/.config/.moc
ln -f ~/dotfiles/nvim/* ~/.config/nvim
ln -f ~/dotfiles/nvim/lua/* ~/.config/nvim/lua
ln -f ~/dotfiles/nvim/UltiSnips/* ~/.config/nvim/UltiSnips
ln -f ~/dotfiles/nvim/init.vim ~/.vimrc
ln -f ~/dotfiles/zsh/.zshenv ~/.zshenv

if [ ! -d /mnt/c ] ;then

  # if unix
  [ ! -d $HOME/.config/i3 ] && mkdir ~/.config/i3
  [ ! -d $HOME/.config/vifm ] && mkdir ~/.config/vifm
  [ ! -d $HOME/.config/kitty ] && mkdir ~/.config/kitty
  [ ! -d $HOME/.config/sxhkd ] && mkdir ~/.config/sxhkd
  [ ! -d $HOME/.config/espanso ] && mkdir ~/.config/espanso
  ln -f ~/dotfiles/espanso/default.yml ~/.config/espanso/default.yml
  ln -f ~/dotfiles/espanso/user/* ~/.config/espanso/user
  ln -f ~/dotfiles/i3/config ~/.config/i3/config
  ln -f ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
  ln -f ~/dotfiles/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
  ln -f ~/dotfiles/vifm/vifmrc ~/.config/vifm/vifmrc
else

  # if windows
  [ ! -d /mnt/c/User/malac/AppData/Roaming/espanso ] && mkdir /mnt/c/User/malac/AppData/Roaming/espanso
  [ ! -d /mnt/c/User/malac/AppData/Roaming/espanso/user ] && mkdir /mnt/c/User/malac/AppData/Roaming/espanso/user
  cp -f ~/dotfiles/espanso/default.yml /mnt/c/Users/malac/AppData/Roaming/espanso
  cp -f ~/dotfiles/espanso/user/* /mnt/c/Users/malac/AppData/Roaming/espanso/user
fi


# ln -f ~/dotfiles/moc/config ~/.moc/config
