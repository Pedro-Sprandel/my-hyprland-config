#!/bin/bash

# Diretório dos temas
THEMES_DIR="$HOME/.config/hypr/themes"
THEMES=()

# Listar temas disponíveis
for theme in "$THEMES_DIR"/*/; do
    theme_name=$(basename "$theme")
    THEMES+=("$theme_name")
done

# Usar Rofi para selecionar um tema
SELECTED_THEME=$(printf '%s\n' "${THEMES[@]}" | rofi -dmenu -p "Selecione um tema:")

if [ -n "$SELECTED_THEME" ]; then
    # Aplicar o tema selecionado
    cp "$THEMES_DIR/$SELECTED_THEME/style.css" "$HOME/.config/waybar/"
    cp "$THEMES_DIR/$SELECTED_THEME/launch-hyprpaper.sh" "$HOME/.config/hypr/scripts/launch-hyprpaper.sh"
    cp "$THEMES_DIR/$SELECTED_THEME/colors.conf" "$HOME/.config/hypr/config/colors.conf"
    # Reiniciar componentes necessários
    hyprctl reload
    pkill waybar
    waybar & disown
    source "$HOME/.config/hypr/scripts/launch-hyprpaper.sh"
    notify-send "Tema alterado" "Tema $SELECTED_THEME aplicado com sucesso!"
fi
