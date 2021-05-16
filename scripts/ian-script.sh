# !/usr/bin/env sh

current_path=$HOME/chia
new_path=$HOME/chia/new-dir
log_file=$HOME/test.md
delay_in_seconds=600

# DONT CHANGE THIS
command=$(ls -p $current_path | grep -v /)

while :; do
  if [[ ! -z $command ]]; then
    for thing in $current_path/*; do
      if [ -f $thing ]; then
        if [ "${thing##*.}" == "plot" ] ;then
          mv $thing $new_path && echo "moved" $thing "at" `date +"%m/%d/%Y %H:%M"` >> $log_file
        fi

      fi
    done
  fi
  sleep $delay_in_seconds
done
