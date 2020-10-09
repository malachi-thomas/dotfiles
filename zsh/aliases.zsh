# Basic Alias's
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
alias c='cd $(dirname "$(fzf -e)")'
alias dl='youtube-dl -x -o "%(title)s.%(ext)s"'
alias reset='git reset --hard HEAD'
alias copy='xclip -selection "primary" <'
alias t='tree -I node_modules'
alias screenkey='screenkey -p fixed -g 50%x5%+50%+95%'
alias cc='cd && cd $(dirname "$(fzf -e)")'
alias v='nvim'
alias x='vifm .'
alias tags='ctags -R --sort=1 --exclude=node_modules'
alias f='rg --files | fzf | xargs -I "{}" nvim {}'


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
alias lrc='v ~/dotfiles/nvim/lua/init.lua'
alias vsn='v ~/dotfiles/nvim/lua/nvim-snippets.lua'

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
alias not='cd ~/dotfiles/notes && v'
alias react='cd ~/code/react'

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


# Windows
if [ -d "/mnt/c/Users" ]
  then
  alias win='cd /mnt/c/Users/myUserName'
fi

# Programming
alias live='live-server --browser=brave'
alias sas='sass --watch'
alias scss='sass --watch'
alias ga='git add -A'
alias gp='git push --all'
alias rmnpm='rm -R node_modules package.json package-lock.json'

# Git
alias commit='git add -A; git commit -m'
alias push='git push'
alias clone='git clone'
alias checkout='git branch | fzf | sed "s/\* //g" | xargs -I "{}" git checkout {}'
alias merge='git branch | fzf | sed "s/\* //g" | xargs -I "{}" git merge {}'
alias reset='git reset --hard'

