#!/bin/bash

/usr/bin/compton -b -f
/usr/bin/start-pulseaudio-x11 &
/usr/bin/blueberry-tray &
#/usr/bin/nm-applet &
/usr/bin/gnome-screensaver &
/usr/bin/mopidy &
/home/tenyun/open_mpd_fifo.sh &
/usr/bin/feh --bg-scale ~/images/wallpapers/1.jpg &
# /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/bin/xset s off
/usr/bin/xset s off -dpms
