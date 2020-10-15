# Keybindings
bindkey '^H' backward-kill-word # Ctrl backspace
bindkey '5~' kill-word  # Ctrl Delete
bindkey "^[[H" beginning-of-line # Home
bindkey "^[[F" end-of-line # End
bindkey -s '^[' '' # Unmap esc
bindkey -s '^n' '^[c' # bind alt+c to ctrl+n

# autoload -U colors && colors


# History

# Basic auto/tab complete
autoload -U compinit && compinit
autoload -Uz compinit
zstyle ':completion:*' list-colors $LS_COLORS
zstyle ':completion:*' menu yes select
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
compinit



