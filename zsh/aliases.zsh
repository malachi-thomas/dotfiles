# Basic Alias's for unix and windows
alias q='exit'
alias rma='sudo rm -rv'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ex='chmod +x'
alias so='source ~/dotfiles/zsh/.zshrc'
alias mk='mkdir'
alias to='touch'
alias c='cd $(dirname "$(fzf -e)")'
alias dl='youtube-dl -x -o "%(title)s.%(ext)s"'
alias screenkey='screenkey -p fixed -g 50%x5%+50%+95%'
alias v='nvim'
alias f='rg --files | fzf | xargs -I "{}" nvim {}'
alias storage='du -h'
alias vimrc='curl -L https://raw.githubusercontent.com/banana-llarma/dotfiles/main/vim/.vimrc > ~/.vimrc'



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
alias bin='cd ~/dotfiles/scripts'
alias dot='cd ~/dotfiles'
alias dow='cd ~/Downloads'
alias not='cd ~/dotfiles/notes'


  alias ls='ls -FG'
  alias la='ls -aFG'
  alias ll='ls -laFG'

# npm
alias npmi='npm i'
alias npmig='npm i -g'

# docker
alias doc='docker'
alias docr='doc run -d --rm'
alias docs='doc stop'
alias docsa='doc stop $(docls -q)'
alias docrm='doc rm'
alias docrma='docker rm $(docker ps -aq)'
alias docls='doc ps'
alias docla='doc ps -a'
alias docb='doc build -t'


# Git
alias push='git push'
alias branch='git branch'
alias clone='git clone'
alias checkout='git branch | fzf | sed "s/\* //g" | xargs -I "{}" git checkout {}'
alias merge='git branch | fzf | sed "s/\* //g" | xargs -I "{}" git merge {}'
alias reset='git reset --hard'
alias pull='git pull'
alias status='git status'
gitStartup() {
  git init
  git add -A
  git commit -m "first commit"
  git branch -M main
  git remote add origin git@github.com:$GITNAME/$1.git
  git push -u origin main
}
  # echo git@github.com:$GITNAME/$1.git
commit() {
  git add -A
  git commit -m $1
  git push
}

