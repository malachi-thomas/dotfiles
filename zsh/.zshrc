
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-z)
source $ZSH/oh-my-zsh.sh
source ~/dotfiles/zsh/functions.zsh
source ~/dotfiles/zsh/config.zsh
source ~/dotfiles/zsh/aliases.zsh

alias hat='echo "hats"'
autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

# change the path color
zstyle :prompt:pure:path color white

# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure
