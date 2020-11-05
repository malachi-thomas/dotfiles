# nvim
[ ! -d $HOME/.config/nvim/lua ] && mkdir -p ~/.config/nvim/lua
[ ! -d $HOME/.config/nvim/UltiSnips ] && mkdir -p ~/.config/nvim/UltiSnips
cp -r ~/dotfiles/nvim/* ~/.config/nvim
ln -f ~/.config/nvim/* ~/dotfiles/nvim
ln -f ~/.config/nvim/lua/* ~/dotfiles/nvim/lua
ln -f ~/.config/nvim/UltiSnips/* ~/dotfiles/nvim/UltiSnips

# i3
[ ! -d $HOME/.config/i3 ] && mkdir -p ~/.config/i3
cp -r ~/dotfiles/i3/* ~/.config/i3

# vifm
[ ! -d $HOME/.config/vifm ] && mkdir -p ~/.config/vifm
cp -r ~/dotfiles/vifm/* ~/.config/vifm


# kitty
[ ! -d $HOME/.config/kitty ] && mkdir -p ~/.config/kitty
cp -r ~/dotfiles/kitty/* ~/.config/kitty

# sxhkd
[ ! -d $HOME/.config/sxhkd ] && mkdir -p ~/.config/sxhkd
cp -r ~/dotfiles/sxhkd/* ~/.config/sxhkd

# espanso
[ ! -d $HOME/.config/espanso ] && mkdir -p ~/.config/espanso/user
cp -r ~/dotfiles/espanso/* ~/.config/espanso

# alacritty
[ ! -d $HOME/.config/alacritty ] && mkdir -p ~/.config/alacritty
cp -r ~/dotfiles/alacritty/* ~/.config/alacritty

# vscode
[ ! -d $HOME/.config/Code/User/snippets ] && mkdir -p ~/.config/Code/User/snippets
cp -r ~/dotfiles/vscode/* ~/.config/Code/User
