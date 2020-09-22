#!/usr/bin/env bash

# open windows
i3-msg 'workspace 4; exec google-chrome-unstable'
sleep 1
i3-msg 'workspace 3; exec kitty -e mocp'
sleep 1
i3-msg 'workspace 2; exec chromium'
sleep 1
i3-msg 'workspace 1; exec kitty'
