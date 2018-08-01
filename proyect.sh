
#!/bin/bash



FECHA=`date +"%d/%m/%Y"`
CALENDARIO=`cal`
HORA=`date +"%H:%M"`
NOMBRE=`uname -n`
ESTADO=`sar -u 1 2 | tail -1 | awk '{print $5 "%"}'`
MEMORIA=`free -m | awk {'print $1 " " $2'}`
DISCOS=`df -h`
TIEMPO=`uptime`
CASA=`ls $HOME`
MBYTES=`du -hsm $HOME | awk '{print $1 " MB"}'`

echo
echo "			** WELCOME $USER **"

echo "La fecha de hoy es: $FECHA. \n"
echo "La hora actual es: $HORA. \n"
echo "\n $CALENDARIO \n"
echo "Nombre de la maquina: $NOMBRE.\n"
echo "Estado de CPU: $ESTADO .\n"
echo "Uso de memoria: $MEMORIA MB.\n"
echo "Estado de discos: $DISCOS.\n"
echo "Usuario: $USER."
echo "Tiempo utilizando el equipo: $TIEMPO.\n"
echo "\tArchivos en su /home: \n$CASA\n"
echo "Su /home posee : $MBYTES Mbytes"
