# !/usr/bin/env sh

current_path=$HOME/test
new_path=$HOME/test/hats

# DONT CHANGE THIS
command=$(ls -p $current_path | grep -v /)

# loop forever
while :; do
  # if $current_path not empty
  if [[ ! -z $command ]]; then
    # for loop on each thing in $current_path
    for thing in $current_path/*; do
      if [ -f $thing ]; then
        # mv $thing to $new_path;
        mv $thing $new_path
        echo "moved at" `date +"%H:%M"`
      fi
    done
  fi
  # delay 10 minuets
  sleep 600
done
