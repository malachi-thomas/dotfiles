#!/bin/zsh

[ -f $HOME/dotfiles/zsh/variables.zsh ] && source $HOME/dotfiles/zsh/variables.zsh
[ -f $HOME/a.out ] && rm $HOME/a.out
[ -f $HOME/.z ] && rm $HOME/.z
[ -f $HOME/.xsession-errors ] && rm $HOME/.xsession-errors
