#!/bin/sh

pkill hyprpaper
export WP="~/.config/hypr/wallpapers/black-rocks.jpg"
hyprpaper & disown 
