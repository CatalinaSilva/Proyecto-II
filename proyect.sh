#!/bin/bash



FECHA=`date +"%d/%m/%Y"`
CALENDARIO=`cal`
HORA=`date +"%H:%M"`
NOMBRE=`uname -n`
##ESTADO=`top -bn1`
MEMORIA=`vm_stat`
DISCOS=`df -h`
TIEMPO=`uptime`
CASA=`ls $HOME`
MBYTES=`du -h -s -m $HOME`

echo
echo "			** WELCOME $USER **"

echo "La fecha de hoy es: $FECHA. \n"
echo "La hora actual es: $HORA. \n"
echo "\n $CALENDARIO \n"
echo "Nombre de la maquina: $NOMBRE.\n"
##xecho "Estado de CPU: $ESTADO.\n"
echo "Uso de memoria: $MEMORIA.\n"
echo "Estado de discos: $DISCOS.\n"
echo "Usuario: $USER."
echo "Tiempo utilizando el equipo: $TIEMPO.\n"
echo "\tArchivos en su /home: \n$CASA\n"
echo "Su /home posee : $MBYTES Mbytes"

