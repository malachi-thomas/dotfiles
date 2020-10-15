source ~/dotfiles/zsh/functions.zsh
source ~/dotfiles/zsh/config.zsh
source ~/dotfiles/zsh/aliases.zsh
source ~/dotfiles/zsh/plugins/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/plugins/zsh-z.zsh

fpath+=$HOME/dotfiles/zsh/theam/pure
autoload -U promptinit; promptinit
prompt pure

# syntax Last
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
