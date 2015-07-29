#!/bin/sh

gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape $1
