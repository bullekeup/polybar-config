#!/usr/bin/env sh

## Add this to your wm startup file.
[ -n "$(command -v displayset)" ] && { displayset; sleep 1; }

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Source env file (set if names and potentially sensible values)
[ -e "${HOME}/.config/env_vars" ] && {
  source "${HOME}/.config/env_vars"
} || echo "Warning: failed to source env_vars !"

## Launch
polybar top -c ~/.config/polybar/current.ini &
polybar secondary -c ~/.config/polybar/current.ini &

