# basic rice config
xrandr --output HDMI-0 --mode 1920x1080 --rate 144.01
xcompmgr &
xwallpaper --zoom /home/hestia/.local/src/wallpaper.png
wal -i /home/hestia/.local/src/wallpaper.png
xdotool key super+F5

# autostart
sh /home/hestia/.local/src/status.sh

# run wm
exec dwm
