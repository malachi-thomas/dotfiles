#!/usr/bin/env 

# install zsh and other #dependntsEs#
sudo pacman -S zsh curl git

# change default shell to zsh
chsh -s $(which zsh)

# install oh-my-zsh
# git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.config/oh-my-zsh

# install zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z ~/.config/zsh/plugins/zsh-z

# install zsh pure prompt
# mkdir -p "$HOME/.zsh"
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"



