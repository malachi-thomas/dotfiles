# !/usr/bin/env sh

current_path=$HOME/test
new_path=$HOME/test/hats
delay_in_seconds=600

# DONT CHANGE THIS
command=$(ls -p $current_path | grep -v /)

while :; do
  if [[ ! -z $command ]]; then
    for thing in $current_path/*; do
      if [ -f $thing ]; then
        mv $thing $new_path
        echo "moved at" `date +"%H:%M"`
      fi
    done
  fi
  sleep $delay_in_seconds
done
