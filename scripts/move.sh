# nvim
[ ! -d $HOME/.config/nvim/lua ] && mkdir -p ~/.config/nvim/lua
[ ! -d $HOME/.config/nvim/snippets] && mkdir -p ~/.config/nvim/snippets
[ ! -d $HOME/.config/nvim/spell] && mkdir -p ~/.config/nvim/spell
[ ! -d $HOME/.config/nvim/pack/plugins/opt] && mkdir -p ~/.config/nvim/pack/plugins/opt
cp -r ~/dotfiles/nvim/* ~/.config/nvim

# i3
[ ! -d $HOME/.config/i3 ] && mkdir -p ~/.config/i3
cp -r ~/dotfiles/i3/* ~/.config/i3

# sxhkd
[ ! -d $HOME/.config/sxhkd ] && mkdir -p ~/.config/sxhkd
cp -r ~/dotfiles/sxhkd/* ~/.config/sxhkd

# espanso
[ ! -d $HOME/.config/espanso ] && mkdir -p ~/.config/espanso/user
cp -r ~/dotfiles/espanso/* ~/.config/espanso

# alacritty
[ ! -d $HOME/.config/alacritty ] && mkdir -p ~/.config/alacritty
cp -r ~/dotfiles/alacritty/* ~/.config/alacritty
