#!/usr/bin/env bash
#    
#                         _
#      ___ _ ____   _____| |__
#     / _ \ '_ \ \ / / __| '_ \
#    |  __/ | | \ V /\__ \ | | |
#     \___|_| |_|\_(_)___/_| |_|
#    
#    BUILD: Surface Book 2
#    VERSION: 2.0

# SXHKD
sxhkd &

# SETUP TOUCHPAD
/home/r3dux/bin/env/touchy.sh


# SET CURSOR (CURSOR NEEDS TO ALSO BE SET IN ~/.Xresources TO BE CORRECTLY SIZED)
xsetroot -xcf /usr/share/icons/Bibata-Original-Ice/cursors/left_ptr 48

# DPI SCALING, KEY REPEAT, KEYSWAP...
xrandr --dpi 192
xset r rate 275 200
/usr/bin/setxkbmap -option "caps:swapescape" &

# RELOAD PYWAL
wal -R

# COMPILE ST
$HOME/bin/env/pywal/compile_st.sh

# PROGRAMS
clipmenud &
killall -q xfce4-power-manager
xfce4-power-manager &
~/bin/env/pywal/dunst_pywal.sh
killall -q nitrogen
nitrogen --restore &
killall -q xautolock slock
xautolock -time 20 -lock slock &
killall -q polybar
polybar -r new &
killall -q picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --experimental-backends &

# ADJUST PADDING
/home/r3dux/bin/env/padding.sh

touchegg &
