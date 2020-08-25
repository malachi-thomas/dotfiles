#!/usr/bin/env bash

sudo pacman -S openssh xclip
git config --global user.email "thomasmalachi18@gmail"
git config --global user.name "malachi557"

ssh-keygen -t rsa -b 4096 -C "thomasmalachi18@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

xclip -sel clip < ~/.ssh/id_rsa.pub
echo ""
echo "Go to github"
