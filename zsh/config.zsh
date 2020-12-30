# Keybindings
bindkey '^H' backward-kill-word # Ctrl backspace
bindkey '5~' kill-word  # Ctrl Delete
bindkey "^[[H" beginning-of-line # Home
bindkey "^[[F" end-of-line # End
bindkey -s '^[' '' # Unmap esc
bindkey -s '^n' '^[c' # bind alt+c to ctrl+n
bindkey -v

_git_repo_name() { 
    gittopdir=$(git rev-parse --git-dir 2> /dev/null)
    if [[ "foo$gittopdir" == "foo.git" ]]; then
        echo " "`basename $(pwd)`":"
    fi
}
_git_branch_name() {
    git branch 2>/dev/null | awk '/^\*/ { print $2 }'
}

# Prompt
setopt prompt_subst
autoload -U colors && colors
PS1='

%F{magenta}%n@%m%f%F{cyan}$(_git_repo_name)$(_git_branch_name)%f %F{blue}%~
%F{red}-%f '

# Basic auto/tab complete
autoload -Uz compinit && compinit
zstyle ':completion:*' list-colors $LS_COLORS
zstyle ':completion:*' menu yes select
zmodload zsh/complist
_comp_options+=(globdots) # Include hidden files.

# I don't know
compinit -d "~/.config/zsh"
