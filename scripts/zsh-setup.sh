#!/usr/bin/env 

# install zsh and other #dependntsEs#
# sudo pacman -S zsh curl git
echo "install zsh"

# change default shell to zsh
chsh -s $(which zsh)

# install oh-my-zsh
# git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.config/oh-my-zsh

# install zsh plugins

mkdir -p ~/dotfiles/zsh/plugins/zsh-syntax-highlighting

curl -L https://raw.githubusercontent.com/banana-llarma/dotfiles/testing-stuff/zsh/plugins/zsh-z.zsh > ~/dotfiles/zsh/plugins/zsh-z.zsh
curl -L https://raw.githubusercontent.com/banana-llarma/dotfiles/testing-stuff/zsh/plugins/zsh-autosuggestions.zsh > ~/dotfiles/zsh/plugins/zsh-autosuggestions.zsh

