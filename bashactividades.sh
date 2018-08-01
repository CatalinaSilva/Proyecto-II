 #!/bin/bash 
 
	echo "Los usuaries reales son:" 
	echo
	
	for i in `seq 1000 1003`;
	do
		if [ `cat /etc/passwd |grep "$i" | cut -d":" -f1` ]; then
			USUARIX=`cat /etc/passwd |grep "$i" | cut -d":" -f1`
			U=`cat /etc/passwd |grep "$i" | cut -d":" -f3` 
			echo "User: $USUARIX  y su UID es $U"
		fi
	done
	
	echo
	read -p "¿Desea realizar algun filtrado? si/no  " RESPUESTA
	echo

	if [ $RESPUESTA = "si" ]; then 
		read -p "Escriba palabra que desea filtrar " PALABRA
		echo
		
		if [ `cat /etc/passwd | cut -d":" -f1 |grep "$PALABRA"| head -n 1` ]; then
			echo "Coincidencias:" 
			echo
			cat /etc/passwd | cut -d":" -f1 |grep "$PALABRA"
		else
			echo "No hay coincidencias"

		fi	
		
	fi	
		
			
			
			

	
