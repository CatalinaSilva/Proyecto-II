#!/bin/bash

MODIFICADO=`find $HOME -mtime -1`
TIEMP=`who -a`


echo "Los archivos modificados en las ultimas 24 horas son:\n$MODIFICADO"
echo "Los usuarios conectados son: $TIEP."
