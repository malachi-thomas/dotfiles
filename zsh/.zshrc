
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-z)
source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/dotfiles/zsh/functions.zsh
source ~/dotfiles/zsh/config.zsh
source ~/dotfiles/zsh/aliases.zsh

fpath+=$HOME/.zsh/pure

autoload -U promptinit; promptinit
prompt pure
