#!/usr/bin/python3

import os
import subprocess
import time

# START SXHKD
subprocess.call('sxhkd &', shell=True)

# SETUP TOUCHPAD
os.chdir('/home/r3dux/bin/env/')
subprocess.call('./touchy.sh', shell=True)

# DPI SCALING, KEY REPEAT, KEYSWAP...
subprocess.call('xrandr --dpi 192', shell=True)
subprocess.call('xset r rate 275 200', shell=True)
subprocess.call('/usr/bin/setxkbmap -option "caps:swapescape" &', shell=True)

# RELOAD PYWAL & RE-COMPILE ST
# subprocess.call('wal -R', shell=True)
# subprocess.call('./st_pywal.py', shell=True)

os.system('wal -R')
os.system('/home/r3dux/bin/env/compile_st.sh')

# PROGRAMS
subprocess.call('clipmenud &', shell=True)
subprocess.call('killall -q xfce4-power-manager', shell=True)
subprocess.call('xfce4-power-manager &', shell=True)
subprocess.call('./dunst_pywal.sh', shell=True)
subprocess.call('killall -q nitrogen', shell=True)
#subprocess.call('while pgrep -u $UID -x nitrogen >/dev/null; do sleep 1; done', shell=True)
subprocess.call('nitrogen --restore &', shell=True)
subprocess.call('killall -q xautolock slock', shell=True)
subprocess.call('xautolock -time 10 -locker slock &', shell=True)
subprocess.call('killall -q polybar', shell=True)
#subprocess.call('while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done', shell=True)
subprocess.call('polybar -r new &', shell=True)
subprocess.call('killall -q picom', shell=True)
#subprocess.call('while pgrep -u $UID -x picom >/dev/null; do sleep 1; done', shell=True)
time.sleep(1)
subprocess.call('picom &', shell=True)

# ADJUST PADDING (~/bin/env/padding.sh)
subprocess.call('./padding.sh', shell=True)



