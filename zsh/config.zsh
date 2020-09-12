# Config
export PATH=$PATH:/home/malachi/dotfiles/scripts/
export EDITOR='nvim'
export GMAIL='thomasmalachi18@gmail.com'
export GUSER='malachi557'
export BROWSER='chromium'
export TERM=xterm-256color
export TODAY=`date +%d/%b/%Y`
export MANPAGER='nvim +Man'
bindkey '^H' backward-kill-word # Ctrl backspace
bindkey '5~' kill-word          # Ctrl Delete
bindkey -s '^n' 'vifm .\n'

setopt autocd
autoload -U colors && colors

# Basic auto/tab complete: -Luke Smith
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
