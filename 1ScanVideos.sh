
#!/bin/bash

# Directorio de destino para los archivos .mp4.
ANIMATION_DIR="$HOME/WallpapersAnimation"

# Instala xwinwrap si no está presente en el sistema.
if ! command -v xwinwrap &> /dev/null; then
    echo "Instalando xwinwrap..."

    if [ -x "$(command -v apt-get)" ]; then
        # Distribuciones basadas en Debian (como Ubuntu).
        sudo apt-get install xwinwrap --no-install-recommends -y
    elif [ -x "$(command -v pacman)" ]; then
        # Arch Linux.
        sudo pacman -S xorg-xwinwrap --noconfirm
    elif [ -x "$(command -v dnf)" ]; then
        # Fedora.
        sudo dnf install xorg-xwinwrap -y
    elif [ -x "$(command -v zypper)" ]; then
        # openSUSE.
        sudo zypper install xorg-xwinwrap -y
    else
        echo "No se pudo determinar el gestor de paquetes de la distribución. Por favor, instala xwinwrap manualmente."
        exit 1
    fi

    echo "xwinwrap instalado"

    # Verifica si el directorio de destino existe, y si no, créalo.
    if [ ! -d "$ANIMATION_DIR" ]; then
        mkdir -p "$ANIMATION_DIR"
        echo "Carpeta '$ANIMATION_DIR' creada."
    fi

    # Mueve todos los archivos .mp4 de la carpeta actual a $ANIMATION_DIR.
    mv ./*.mp4 "$ANIMATION_DIR" 2>/dev/null

    # Verifica si los archivos se movieron exitosamente.
    if [ $? -eq 0 ]; then
        echo "Archivos .mp4 movidos a '$ANIMATION_DIR'."
    else
        echo "No se pudo mover archivos .mp4 a '$ANIMATION_DIR' debido a un error."
    fi
fi
