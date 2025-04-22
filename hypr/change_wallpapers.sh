#!/bin/bash

WALLPAPER_DIRECTORY=$HOME/Pictures/Wallpapers

WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

sleep 0

hyprctl hyprpaper unload unused
