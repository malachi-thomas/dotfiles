#!/usr/bin/env bash

pkill sxhkd
sxhkd
pkill polybar
exec ~/.config/polybar/launch.sh

