#!/usr/bin/env bash

mkidr -p ~/dotfiles/zsh

curl -L https://raw.githubusercontent.com/banana-llarma/dotfiles/main/zsh/.zshrc > ~/dotfiles/zsh/.zshrc
curl -L https://raw.githubusercontent.com/banana-llarma/dotfiles/main/zsh/.zshenv > ~/dotfiles/zsh/.zshenv
curl -L https://raw.githubusercontent.com/banana-llarma/dotfiles/main/zsh/functions.zsh > ~/dotfiles/zsh/functions.zsh
curl -L https://raw.githubusercontent.com/banana-llarma/dotfiles/main/zsh/config.zsh > ~/dotfiles/zsh/config.zsh
curl -L https://raw.githubusercontent.com/banana-llarma/dotfiles/main/zsh/aliases.zsh > ~/dotfiles/zsh/aliases.zsh
ln -f ~/dotfiles/zsh/.zshenv ~/.zshenv
