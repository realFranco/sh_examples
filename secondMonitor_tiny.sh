echo Use this command to edit the resolution of the VGA monitor with 1280x1024.
xrandr --newmode "1280x1024_60.00"  109.00  1280 1368 1496 1712 1024 1027 1034 1063 -hsync +vsync
xrandr --addmode VGA-1 1280x1024_60.00
xrandr --output VGA-1 --mode 1280x1024_60.00
xrandr --output VGA-1 --right-of HDMI-1
echo Finish of the config lines.