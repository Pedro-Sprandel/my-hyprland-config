#!/bin/sh

pkill hyprpaper
export WP="~/.config/hypr/wallpapers/cat-leaves.png"
hyprpaper & disown 
