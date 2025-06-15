#!/bin/sh

pkill hyprpaper
export WP="~/.config/hypr/wallpapers/koi-fish.png"
hyprpaper & disown 
