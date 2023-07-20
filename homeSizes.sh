#!/bin/bash
#
#Scrip que proporciona información de ocupación de los directorios en /home

if [ $(id -u) -ne 0 ]; then
	echo "[ERROR] Debe ejecutar el Script con permiso de root"
	exit 1
fi

for dir in $(ls /home); do
	echo "================="
	echo "Directorio: $dir"
	ls -ld /home/$dir
	du -sh /home/$dir
done
