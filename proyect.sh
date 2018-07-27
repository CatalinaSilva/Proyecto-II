#!/bin/bash

clear

FECHA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
NOMBRE=`uname -n`
ESTADO=`top -bn1`
MEMORIA=`vm_stat`
DISCOS=`df -h`
TIEMPO=`uptime`

echo
echo "			** WELCOME $USER **"

echo "La fecha de hoy es: $FECHA."
echo "La hora actual es: $HORA."
echo "Nombre de la maquina: $NOMBRE."
echo "Estado de CPU: $ESTADO."
echo "Uso de memoria: $MEMORIA."
echo "Estado de discos: $DISCOS."
echo "Usuario: $USER."
echo "Tiempo utilizando el equipo: $TIEMPO."
echo ""
escho
