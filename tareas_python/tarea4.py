import logging
import os
import psutil

# Definimos el nombre de usuario y la ruta del archivo de log
nombre_usuario = "manolita"
log_path = f"/home/manolita/logs/espacio.log"

# Creamos el directorio para el archivo de log si no existe
if not os.path.exists(os.path.dirname(log_path)):
    os.makedirs(os.path.dirname(log_path), exist_ok=True)

# Configuramos el logging para escribir en el archivo especificado
logging.basicConfig(filename=log_path, level=logging.INFO, format='%(asctime)s:%(levelname)s:%(message)s')

def analizar_espacio():
    # Obtén el uso del disco en la partición raíz "/"
    uso_disco = psutil.disk_usage('/')
    
    # Registra la información del uso del disco
    logging.info(f"Uso del disco: {uso_disco.percent}%")
    
    # Comprueba y registra mensajes dependiendo del uso del disco
    if uso_disco.percent > 80:
        logging.error("El espacio en disco ha superado el 80% de su capacidad.")
    elif uso_disco.percent > 60:
        logging.warning("El espacio en disco está por encima del 60%.")
    else:
        logging.info("El espacio en disco está bajo un nivel aceptable.")

# Me aseguro que la función analizar_espacio() solo se ejecutará si existe en tarea4.py
if __name__ == "__main__":
    analizar_espacio()
