# Functions
# chpwd() ls --color=auto -F

# img file is $1 and /dev/sda is $2
usb() {
  sudo xzcat -f $1 | sudo dd bs=4M of=$2
}

# vifm(){
#   local dst="$(command vifm --choose-dir - "$@")"
#   if [ -z "$dst" ]
#   then
#     echo 'Directory picking cancelled/failed'
#     return 1
#   fi
#   cd "$dst"
# }

pac() { 
  for f in "$@"
  do
    sudo pacman -S $@ || yay $@
  done
}

pacr() {
  for f in "$@"
  do
    sudo pacman -Rscn $@
  done
}

gacp() {
  git add -A
  git commit -am "$1"
  git push --all 
}
-() {
  cd -
}

edit() {
  code $1;
  exit
}
# code() {
#   code $1
#   exit
# }



# v() {
# if [ $# -eq 0 ]; then
#   nvim -p $(fzf -e)
# else
#   nvim $@
# fi

# }
