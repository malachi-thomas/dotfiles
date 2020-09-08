#!/usr/bin/env

vf(){
  if [ -d $1 ]
    sh ~/dotfiles/scripts/vifm.sh $1
  then
  else
    sh ~/dotfiles/scripts/vifm.sh .
  fi
}

