#!/bin/bash

WALLPAPER_DIRECTORY=/home/pixelatedstar/Pictures/Wallpapers

WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

sleep 2

hyprctl hyprpaper unload unused
