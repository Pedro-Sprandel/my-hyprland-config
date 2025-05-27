#!/bin/sh

pkill hyprpaper
export WP="~/.config/hypr/wallpapers/dune.jpg"
hyprpaper & disown 
