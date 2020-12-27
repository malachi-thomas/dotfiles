# Basic Alias's for unix and windows
alias q='exit'
alias rma='sudo rm -rv'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ex='chmod +x'
alias so='source ~/dotfiles/zsh/.zshrc && espanso restart'
alias mk='mkdir'
alias to='touch'
alias c='cd $(dirname "$(fzf -e)")'
alias dl='youtube-dl -x -o "%(title)s.%(ext)s"'
alias screenkey='screenkey -p fixed -g 50%x5%+50%+95%'
alias v='nvim'
alias f='rg --files | fzf | xargs -I "{}" nvim {}'
alias storage='du -h'


# Config Files
alias vrc='v ~/.config/nvim/init.vim'
alias vma='v ~/.config/nvim/mappings.vim'
alias vpl='v ~/.config/nvim/plugins.vim'
alias vpc='v ~/.config/nvim/plugin-configs.vim'
alias vfn='v ~/.config/nvim/functions.vim'
alias vsn='v ~/.config/nvim/lua/nvim-snippets.lua'
alias vst='v ~/.config/nvim/steno.vim'
alias irc='v ~/.config/i3/config'
alias pol='v ~/.config/polybar/config'
alias zsh='v ~/dotfiles/zsh/.zshrc'
alias val='v ~/.config/plover/vim.json'
alias kit='v ~/.config/kitty/kitty.conf'
alias sxh='v ~/.config/sxhkd/sxhkdrc'
alias bsp='v ~/.config/bspwm/bspwmrc'
alias mux='v ~/.config/tmux/.tmux.conf'
alias vif='v ~/.config/vifm/vifmrc'
alias lrc='v ~/.config/nvim/lua/init.lua'
alias ala='v ~/.config/alacritty/alacritty.yml'

# Diretorys
alias plo='cd ~/dotfiles/plover'
alias bin='cd ~/dotfiles/scripts'
alias notes='cd ~/dotfiles/notes'
alias dot='cd ~/dotfiles'
alias web='cd ~/code/web'
alias webt='cd ~/code/web/test'
alias python='cd ~/code/python'
alias javascript='cd ~/code/javascript'
alias dow='cd ~/Downloads'
alias vvim='cd ~/dotfiles/nvim'
alias typescript='cd ~/code/typescript'
alias not='cd ~/dotfiles/notes'
alias react='cd ~/code/react'
alias con='cd ~/.config'
alias esp='cd ~/dotfiles/espanso'
alias nots='v ~/dotfiles/notes/topics.md'
alias nodejs='cd ~/code/nodejs'

# Linux
if [[ $OSTYPE == "linux-gnu" ]]
then
  alias ls='ls -F --color=auto'
  alias la='ls -aF --color=auto'
  alias ll='ls -laF --color=auto'
  alias power='poweroff'
  alias update='yay -Syu; sudo pacman -Sc'
  alias boot='reboot'
  alias back='kill -9 -1'
  alias aur='makepkg -si'
  alias sleep='systemctl suspend'
  alias pacman='sudo pacman'
  alias pacman-keys='gpg --keyserver pool.sks-keyservers.net --recv-keys'
  alias vid='mpv'
  alias copy='xclip -selection "primary" <'
  alias file='nautilus'
  uefi() {
    sudo systemctl reboot --firmware-setup
  }
fi

# Mac OS
if [[ $OSTYPE == "darwin" ]]
then
  alias ls='ls -FG'
  alias la='ls -aFG'
  alias ll='ls -laFG'
fi

# Windows
if [[ $OSTYPE == "win32" ]]
then
  alias win='cd /mnt/c/Users/malac'
fi

# Git
# alias commit='git add -A; git commit -m'
alias push='git push'
alias clone='git clone'
alias checkout='git branch | fzf | sed "s/\* //g" | xargs -I "{}" git checkout {}'
alias merge='git branch | fzf | sed "s/\* //g" | xargs -I "{}" git merge {}'
alias reset='git reset --hard'
alias pull='git pull'
alias status='git status'
gitStartup() {
  git init
  git commit -m "first commit"
  git branch -M main
  git remote add origin git@github.com:$GITNAME/$1.git
  git push -u origin main
}
commit() {
  git add -A
  git commit -m $1
  git push
}

