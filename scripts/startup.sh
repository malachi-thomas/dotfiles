#!/usr/bin/env bash

xset r rate 200 20

i3-msg 'workspace 3; exec youtube-music'
sleep 3
i3-msg 'workspace 2; exec chromium'
sleep 2
i3-msg 'workspace 1; exec kitty'

# i3-msg 'workspace 4; exec google-chrome-unstable' && i3-msg 'workspace 3; exec youtube-music' && i3-msg 'workspace 2; exec chromium' && i3-msg 'workspace 1; exec alacritty'
