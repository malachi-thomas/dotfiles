#!/usr/bin/env bash

# open windows
i3-msg 'workspace 2; exec chromium'
sleep 1
i3-msg 'workspace 1; exec alacritty'
