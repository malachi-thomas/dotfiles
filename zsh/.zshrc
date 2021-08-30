
# Config files
source ~/dotfiles/zsh/functions.zsh
source ~/dotfiles/zsh/config.zsh
source ~/dotfiles/zsh/aliases.zsh

# Plugins
source ~/dotfiles/zsh/plugins/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/plugins/zsh-z.zsh
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fzf
source ~/dotfiles/zsh/fzf/completion.zsh
source ~/dotfiles/zsh/fzf/key-bindings.zsh

bindkey -v
export KEYTIMEOUT=1

# testing

# setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing

setopt nobeep                                                   # No beep
setopt numericglobsort                                          # Sort filenames numerically when it makes sense

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/malachi/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/malachi/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/malachi/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/malachi/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

