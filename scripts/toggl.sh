#!/usr/bin/env 

toggl start anime
if [ $# -eq 0 ]; then
  toggl stop
fi

if [ $1 = "anime" ]; then
  toggl start -o Anime
fi

if [ $1 = "focus" ]; then
  toggl start -o Focus
fi
