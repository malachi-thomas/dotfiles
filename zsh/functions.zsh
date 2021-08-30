usb() {
  sudo xzcat -f $1 | sudo dd bs=4M of=$2
}

toSnakeCase() {
  echo ${1//(?<!^)(?=[A-Z])/_}
}

pdfToJpg() {
  extension="${1##*.}"
  filename=${1// /-}
  mv $1 $filename
  convert -density 300 -quality 300 $filename $(basename $filename ".$extension").jpg
}

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

notify() {
  /usr/bin/osascript -e 'display notification with title "'"$1"'" sound name "Submarine"'
}

live(){
  live-server --browser=google-chrome-stable --open=$1
}
