#!/bin/sh

pkill hyprpaper
export WP="~/.config/hypr/wallpapers/purple-flow.png"
hyprpaper & disown 
