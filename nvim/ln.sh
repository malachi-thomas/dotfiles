ln -f init.lua $HOME/.config/nvim/init.lua

for i in lua/*.lua; do
  ln $i $HOME/.config/nvim/lua
done