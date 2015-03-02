#!/bin/sh

xrandr --output HDMI1 --auto
xrandr --output eDP1 --auto
xrandr --output HDMI1 --left-of eDP1

nitrogen --restore
