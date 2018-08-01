 #!/bin/bash 
 
 echo "los directorios son:"
 echo
 ls -F | grep "/" | cut -d "/" -f1 | sort
 echo
 echo "los Archivos son:"
 echo
 ls -F | grep -v  "/" | cut -d "." -f1 | sort
 
 echo 
 echo "ficheros mayores a 1024k ordenados por tamanio"
 ls -lS |awk ' $5>1024000 {print $9 "  " ($5/1024) "kB" }'
 echo
 echo "Buscador de ficheros"
 echo
 
 read -p "escriba palabra wue desea buscar  " BUSQUEDA
 if [ `ls | grep "$BUSQUEDA" | head -n 1` ]; then
	readlink -f `ls | grep "$BUSQUEDA"` 
	
	echo
	echo
	
 else 
 echo "No hay coincidencias"
 
 fi
	
 
 
 
 
