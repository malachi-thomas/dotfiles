
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
