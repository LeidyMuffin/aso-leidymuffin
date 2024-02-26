import psutil

# aquí muestro las particiones
particiones = psutil.disk_partitions()
for particion in particiones:
    uso = psutil.disk_usage(particion.mountpoint)
    print(f"{particion.device} {uso.percent}%")
