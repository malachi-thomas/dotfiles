# !/usr/bin/env sh

# wacom tablet
xsetwacom set "Wacom Intuos BT S Pen stylus" Button 2 "pan"
xsetwacom --set "Wacom Intuos BT S Pen stylus" "PanScrollThreshold" 200
xsetwacom set "Wacom Intuos BT S Pad pad" Button 1 'key ctrl insert'
xsetwacom set "Wacom Intuos BT S Pad pad" Button 2 'key shift insert'


# trackball
xinput set-prop "Kensington Expert Wireless TB Mouse" 289 1
xinput set-button-map "Kensington Expert Wireless TB Mouse" 3 0 1 4 5 6 7 0 0

