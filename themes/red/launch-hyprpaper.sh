#!/bin/sh

pkill hyprpaper
export WP="~/.config/hypr/wallpapers/japan_fixed.png"
hyprpaper & disown 
