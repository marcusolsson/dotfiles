#!/bin/bash

export DISPLAY=:0
export XAUTHORITY=/home/marcus/.Xauthority

DP1=`xrandr | grep "^DP1 connected"`
DP2=`xrandr | grep "^DP2 connected"`

if [ -n "$DP1" ]; then
	xrandr --output DP1 --auto --primary --output eDP1 --off
elif [ -n "$DP2" ]; then
	xrandr --output DP2 --auto --primary --output eDP1 --off
else
	xrandr --output eDP1 --auto --primary
fi

nitrogen --restore
