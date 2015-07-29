#!/bin/sh

EXTERNAL=`xrandr | grep "HDMI1"`
LAPTOP=`xrandr | grep "eDP1"`

if [ ! -z "$EXTERNAL" ]; then
	if [ ! -z "$LAPTOP" ]; then
		xrandr --output HDMI1 --auto
		xrandr --output eDP1 --off
	else
		xrandr --newmode "2560x1440_30.00"  146.25  2560 2680 2944 3328  1440 1443 1448 1468 -hsync +vsync
		xrandr --addmode HDMI1 2560x1440_30.00
		xrandr --output HDMI1 --mode 2560x1440_30.00
	fi
fi

nitrogen --restore
