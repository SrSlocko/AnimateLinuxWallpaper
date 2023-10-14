# AnimateLinuxWallpaper
AnimateLinuxWallpaper" es un conjunto de scripts y herramientas diseñadas para llevar la magia de los fondos de pantalla en movimiento a tu sistema operativo Linux. Estos scripts permiten la animación de fondos de pantalla, lo que le da vida a tu escritorio con impresionantes efectos visuales. 

**./1ScanVideos.sh**

Descripción:
Este script de Bash permite mover archivos de video (.mp4) a un directorio de destino específico. Si el directorio de destino no existe, el script lo crea y luego mueve los archivos de video a ese directorio.

Instrucciones de Uso:

Asegúrate de tener Bash instalado en tu sistema. El script es compatible con sistemas basados en Unix y Linux.

Descarga el script y guárdalo en un directorio de tu elección.

Abre una terminal y navega al directorio donde guardaste el script.

Ejecuta el script con el siguiente comando:

`./1ScanVideos.sh`

El script verificará si el comando xwinwrap está instalado en tu sistema. Si no lo está, intentará instalarlo utilizando el gestor de paquetes de tu distribución (como apt, pacman, dnf o zypper) o te proporcionará instrucciones para instalarlo manualmente si no se pudo determinar el gestor de paquetes.

El script también verificará si el directorio de destino ($HOME/WallpapersAnimation) existe. Si no existe, lo creará.

Luego, moverá todos los archivos .mp4 de la carpeta actual al directorio de destino ($HOME/WallpapersAnimation). Si se realizó la operación con éxito, recibirás un mensaje de confirmación.

Requisitos:

Sistema operativo basado en Unix o Linux.
Bash instalado en el sistema.
Permisos para instalar paquetes (en caso de que xwinwrap no esté presente en tu sistema, el script intentará instalarlo).
Estas instrucciones y requisitos son una guía básica para que los usuarios comprendan cómo utilizar el script. Puedes personalizarlos según las necesidades de tu proyecto o agregar información adicional, como ejemplos de uso o una sección de licencia si lo deseas.

**2Walltest.sh**

Descripción:
El script "2Walltest.sh" es parte del proyecto "AnimateLinuxWallpaper" y está diseñado para configurar fondos de pantalla animados en entornos de Linux. Este script se encarga de seleccionar y ejecutar una animación de fondo de pantalla en función de la resolución de la pantalla de tu sistema. Si la resolución es 2732x768, se elige una animación aleatoria y se configura como fondo de pantalla en toda la pantalla. Si la resolución es 1366x768, se eligen dos animaciones aleatorias y se configuran como fondos de pantalla para cada mitad de la pantalla.

Instrucciones de Uso:

Asegúrate de tener Bash instalado en tu sistema. El script es compatible con sistemas basados en Unix y Linux.

Descarga el script "2Walltest.sh" y guárdalo en un directorio de tu elección.

Abre una terminal y navega al directorio donde guardaste el script.

Ejecuta el script con el siguiente comando:

`./2Walltest.sh &`

El script detectará la resolución de la pantalla y configurará fondos de pantalla animados en consecuencia.

Requisitos:

Sistema operativo basado en Unix o Linux.
Bash instalado en el sistema.
Un directorio con archivos de animación (.mp4) en la variable ANIMATION_DIR para que el script pueda seleccionar animaciones aleatorias.
Estas instrucciones y requisitos proporcionan a los usuarios una forma sencilla de configurar fondos de pantalla animados en sus sistemas Linux, y pueden personalizarse según las necesidades de tu proyecto. Además, asegúrate de que la variable ANIMATION_DIR esté configurada correctamente en el script para que los usuarios sepan dónde deben almacenar sus animaciones.
`
**3WallpaerClose.sh**

Descripción:
El script "3WallpaerClose.sh" es una parte del proyecto "AnimateLinuxWallpaper" y está diseñado para manejar el cierre de los procesos relacionados con xwinwrap. Si hay procesos de xwinwrap en ejecución, este script los terminará de manera ordenada, restaurando así la configuración del fondo de pantalla a su estado normal.

Instrucciones de Uso:

Asegúrate de tener Bash instalado en tu sistema. El script es compatible con sistemas basados en Unix y Linux.

Descarga el script "3WallpaerClose.sh" y guárdalo en un directorio de tu elección.

Abre una terminal y navega al directorio donde guardaste el script.

Ejecuta el script con el siguiente comando:

`./3WallpaerClose.sh`

El script verificará si hay procesos de xwinwrap en ejecución y los terminará de manera ordenada. Esto restaurará la configuración del fondo de pantalla a su estado normal.

Estas instrucciones proporcionan a los usuarios una forma de restablecer la configuración del fondo de pantalla en caso de que quieran detener la animación de fondos de pantalla en movimiento. Asegúrate de que el script se ejecute con los permisos adecuados para que pueda cerrar los procesos de xwinwrap.




