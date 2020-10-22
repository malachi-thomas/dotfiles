#!/bin/zsh

[ -f $HOME/dotfiles/zsh/variables.zsh ] && source $HOME/dotfiles/zsh/variables.zsh
if command -v tmux>/dev/null; then
 [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux
fi

