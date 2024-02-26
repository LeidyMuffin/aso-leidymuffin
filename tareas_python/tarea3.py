import os

# aquí se van a crear directorios y archivos
for i in range(1, 6):
    nombre_carpeta = f"folder{i}"
    os.makedirs(nombre_carpeta, exist_ok=True)
    
    # Añadir 10 archivos dentro de cada directorio
    for j in range(1, 11):
        with open(f"{nombre_carpeta}/file{j}.txt", 'w') as file:
            file.write(f"Este es el contenido del fichero {j}")
