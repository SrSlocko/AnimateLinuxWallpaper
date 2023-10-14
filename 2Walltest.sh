
#!/bin/bash

# Directorio donde se encuentran las animaciones.
ANIMATION_DIR="$HOME/WallpapersAnimation"

# Función para obtener la resolución de la pantalla.
get_screen_resolution() {
    local screen_resolution
    screen_resolution=$(xrandr | awk '/\*/ {print $1}')
    echo "$screen_resolution"
}

# Función para seleccionar una animación aleatoria.
select_random_animation() {
    local dir="$1"
    local random_animation
    random_animation=$(find "$dir" -type f -name '*.mp4' | shuf -n 1)
    echo "$random_animation"
}

# Obtén la resolución de la pantalla.
screen_resolution=$(get_screen_resolution)

if [[ $screen_resolution == "2732x768" ]]; then
    # Pantalla de 2732x768, elige una animación aleatoria.
    SELECTED_ANIMATION="$(select_random_animation "$ANIMATION_DIR")"

    xwinwrap -g 2732x768+0+0 -ov -- mpv --no-audio -wid WID --loop "$SELECTED_ANIMATION"
else
    # Pantalla de 1366x768, elige una animación aleatoria para cada pantalla.
    SELECTED_ANIMATION_1="$(select_random_animation "$ANIMATION_DIR")"
    SELECTED_ANIMATION_2="$(select_random_animation "$ANIMATION_DIR")"
    xwinwrap -g 1366x768+0+0 -ov -- mpv --no-audio -wid WID --loop "$SELECTED_ANIMATION_1" &
    xwinwrap -g 1366x768+1366+0 -ov -- mpv --no-audio -wid WID --loop "$SELECTED_ANIMATION_2" &
fi
