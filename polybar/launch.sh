#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
killall -q polybar

# Launch bar
polybar basanta 

