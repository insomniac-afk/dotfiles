#!/bin/sh

# compositor
killall picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config ~/.config/picom/picom.conf &

~/.config/polybar/launch.sh &

#background
feh --bg-fill /home/ellis/Pictures/arch.png &
dunst &
autotiling &
$HOME/scripts/monitors.sh &
xset dpms 0 0 300 &
flameshot &
plex-mpv-shim &
