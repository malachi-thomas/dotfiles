# Config
export PATH=$PATH:/home/malachi/dotfiles/scripts/
export EDITOR='nvim'
export GMAIL='thomasmalachi18@gmail.com'
export GUSER='malachi557'
export BROWSER='chromium'
export TODAY=`date +%d/%b/%Y`
bindkey '^H' backward-kill-word # Ctrl backspace
bindkey '5~' kill-word          # Ctrl Delete
bindkey -s '^n' 'c\n'
bindkey -s '^v' 'v\n'
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!**/node_modules/**' --glob '!react-app-env.d.ts' --glob '!**/.git/**' "
setopt autocd
autoload -U colors && colors

# Basic auto/tab complete: -Luke Smith
autoload -U compinit && compinit
zstyle ':completion:*' file-patterns '%p(D):globbed-files *(D-/):directories' '*(D):all-files'
#zstyle ':autocomplete:tab:*' completion fzf
zmodload zsh/complist
comp_options+=(globdots)
