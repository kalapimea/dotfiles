#!/usr/bin/env bash

WALLDIR="$HOME/.config/hypr/wallpapers"
TARGET="$WALLDIR/current.jpg"

# Pick a random image from the folder
WALLPAPER=$(find "$WALLDIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

# Copy (or symlink) it to a stable path Hyprpaper always reads
cp "$WALLPAPER" "$TARGET"

# Tell hyprpaper to reload wallpaper via IPC
hyprctl hyprpaper preload "$TARGET"
hyprctl hyprpaper wallpaper ",$TARGET"
hyprctl hyprpaper unload all
