#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Launch bar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar main 

