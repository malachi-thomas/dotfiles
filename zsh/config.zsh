# Keybindings
bindkey "^[[H" beginning-of-line # Home
bindkey "^[[F" end-of-line # End
bindkey -s '^[' '' # Unmap esc
bindkey -v

git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch != "" ]];
  then
    echo ' ('$branch')'
  fi
}

# Prompt
setopt prompt_subst
autoload -U colors && colors
PS1='
%F{magenta}%n@%m%f%F{cyan}$(git_branch_name)%f %F{blue}%~
%F{red}-%f '

# Basic auto/tab complete
autoload -Uz compinit
compinit
zstyle ':completion:*' list-colors $LS_COLORS
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' '+l:|=* r:|=*'
zstyle ':completion:*' rehash true
# zstyle ':completion:*' special-dirs true
zstyle ':completion:*' menu yes select
_comp_options+=(globdots)
zmodload zsh/complist


