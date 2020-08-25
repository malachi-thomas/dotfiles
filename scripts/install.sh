#!/usr/bin/env bash
sudo pacman -Syu
sudo pacman -S polybar 
sudo pacman -S base-devel 
sudo pacman -S chromium 
sudo pacman -S firefox 
sudo pacman -S brave 
sudo pacman -S dmenu 
sudo pacman -S neovim 
sudo pacman -S moc 
sudo pacman -S kitty 
sudo pacman -S alacritty 
sudo pacman -S yay 
sudo pacman -S bspwm 
sudo pacman -S sxhkd 
sudo pacman -S python 
sudo pacman -S python-pip 
sudo pacman -S zsh 
sudo pacman -S betterlockscreen 
sudo pacman -S npm
sudo pacman -S feh

pip3 install pynvim

yay plover-git

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'




chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
sudo chmod 666 /dev/ttyACM0 # open seirial port for plover
