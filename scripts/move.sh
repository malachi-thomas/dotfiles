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
ln -f ~/.config/i3/* ~/dotfiles/i3

# vifm
[ ! -d $HOME/.config/vifm ] && mkdir -p ~/.config/vifm
cp -r ~/dotfiles/vifm/* ~/.config/vifm
ln -f ~/.config/vifm/* ~/dotfiles/vifm

# kitty
[ ! -d $HOME/.config/kitty ] && mkdir -p ~/.config/kitty
cp -r ~/dotfiles/kitty/* ~/.config/kitty
ln -f ~/.config/kitty/* ~/dotfiles/kitty

# sxhkd
[ ! -d $HOME/.config/sxhkd ] && mkdir -p ~/.config/sxhkd
cp -r ~/dotfiles/sxhkd/* ~/.config/sxhkd
ln -f ~/.config/sxhkd/* ~/dotfiles/sxhkd

# espanso
[ ! -d $HOME/.config/espanso ] && mkdir -p ~/.config/espanso/user
cp -r ~/dotfiles/espanso/* ~/.config/espanso
ln -f ~/.config/espanso/* ~/dotfiles/espanso
ln -f ~/.config/espanso/* ~/dotfiles/espanso/user

# alacritty
[ ! -d $HOME/.config/alacritty ] && mkdir -p ~/.config/alacritty
cp -r ~/dotfiles/alacritty/* ~/.config/alacritty
ln -f ~/.config/alacritty/* ~/dotfiles/alacritty 

# vscode
[ ! -d $HOME/.config/Code/User/snippets ] && mkdir -p ~/.config/Code/User/snippets
cp -r ~/dotfiles/vscode/* ~/.config/Code/User
ln -f ~/.config/Code/User/* ~/dotfiles/vscode
ln -f ~/.config/Code/User/snippets/* ~/dotfiles/vscode/snippets
