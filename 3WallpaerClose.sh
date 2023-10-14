

#!/bin/bash

# Función para manejar el cierre de los procesos de xwinwrap.
cleanup_xwinwrap() {
    PIDS=$(pgrep -f "xwinwrap")
    if [ -n "$PIDS" ]; then
        kill $PIDS
        echo "Procesos de xwinwrap terminados."
    else
        echo "No se encontraron procesos de xwinwrap en ejecución."
    fi
}

# Verifica si hay procesos de xwinwrap en ejecución.
PIDS=$(pgrep -f "xwinwrap")
if [ -n "$PIDS" ]; then
    cleanup_xwinwrap
else
    echo "No se encontraron procesos de xwinwrap en ejecución."
    exit 1
fi

# Redirige la salida estándar y de error de mpv a /dev/null.
exec mpv --no-audio -wid WID --loop "$SELECTED_ANIMATION" >/dev/null 2>&1
