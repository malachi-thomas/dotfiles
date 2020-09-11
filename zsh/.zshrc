
ZSH_THEME="simple"
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


# Basic Comfig
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:/home/malachi/dotfiles/scripts/
export EDITOR='nvim'
export GMAIL='thomasmalachi18@gmail.com'
export GUSER='malachi557'
export BROWSER='chromium'
export TERM=xterm-256color
export TODAY=`date +%d/%b/%Y`
export MANPAGER='nvim +Man!'

set -o vi

# Plugins

# Zsh Settings
bindkey '^H' backward-kill-word # Ctrl backspace
bindkey '5~' kill-word          # Ctrl Delete
setopt autocd
autoload -U colors && colors

# Basic auto/tab complete: -Luke Smith
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Basic Alias's
alias v='nvim -p'
alias c='cd'
alias ls='ls -F --color=auto'
alias la='ls -aF --color=auto'
alias ll='ls -laF --color=auto'
alias q='exit'
alias rma='sudo rm -rv'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ex='chmod +x'
alias so='source ~/.zshrc'
alias mk='mkdir'
alias f='firefox'
alias b='brave'
alias file='nautilus'
alias to='touch'
alias fzf='fzf -e'
# alias vifm='vifm .'
usb() {
  xzcat -f $1 | sudo dd bs=4M of=$2
}


# Zsh config
chpwd() ls --color=auto

# Config Files
alias vrc='v ~/dotfiles/nvim/init.vim'
alias vma='v ~/dotfiles/nvim/mappings.vim'
alias vpl='v ~/dotfiles/nvim/plugins.vim'
alias vpc='v ~/dotfiles/nvim/plugin-configs.vim'
alias irc='v ~/dotfiles/i3/config'
alias pol='v ~/dotfiles/polybar/config'
alias zsh='v ~/dotfiles/zsh/.zshrc'
alias vst='v ~/dotfiles/nvim/steno.vim'
alias val='v ~/dotfiles/plover/vim.json'
alias kit='v ~/dotfiles/kitty/kitty.conf'
alias sxh='v ~/dotfiles/sxhkd/sxhkdrc'
alias bsp='v ~/dotfiles/bspwm/bspwmrc'
alias mux='v ~/dotfiles/tmux/.tmux.conf'
alias vif='v ~/dotfiles/vifm/vifmrc'
alias vlu='v ~/dotfiles/nvim/lua/nvim-lsp.lua'

# Marks
alias \'v='cd ~/.config/nvim'
#
#Diretorys
alias plo='cd ~/.config/plover'
alias bin='cd ~/dotfiles/scripts'
alias notes='cd ~/dotfiles/notes'
alias dot='cd ~/dotfiles'
alias web='cd ~/code/web'
alias webt='cd ~/code/web/test'
alias python='cd ~/code/python'
alias javascript='cd ~/code/javascript'
alias dow='cd ~/Downloads'
alias vvim='cd ~/.config/nvim'
alias typescript='cd ~/code/typescript'
alias not='cd ~/dotfiles/notes && v topics.md'
alias react='cd ~/code/react'
vifm(){
  local dst="$(command vifm --choose-dir - "$@")"
  if [ -z "$dst" ]; then
    echo 'Directory picking cancelled/failed'
    return 1
  fi
  cd "$dst"
}

vf(){
  if [ -d $1 ]
    vifm $1
  then
  else
    vifm .
  fi
}


bindkey -s '^n' 'vifm .\n'

# Linux
alias uefi='cd && sudo systemctl reboot --firmware-setup'
alias boot='reboot'
alias back='kill -9 -1'
alias aur='makepkg -si'
alias sleep='systemctl suspend'
alias pacman='sudo pacman'
alias power='poweroff'
alias i3='cd i3'
alias update='yay -Syu; sudo pacman -Sc'
pac() { 
  for f in "$@"
  do
    sudo pacman -S $@ || yay $@
  done
}

pacr() {
  for f in "$@"
  do
    sudo pacman -Rscn $@
  done
}


# Programming
alias live='live-server --browser=brave'
alias sas='sass --watch'
alias scss='sass --watch'
alias ga='git add -A'
alias gp='git push --all'
alias rmnpm='rm -R node_modules package.json package-lock.json'

# Git
alias commit='git add -A; git commit -m'
alias clone='git clone'
alias checkout='git branch | fzf | sed "s/\* //g" | xargs -I "{}" git checkout {}'
gacp() { git add -A;git commit -am "$1";git push --all }


