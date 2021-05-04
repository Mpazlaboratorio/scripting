#!/bin/bash
import os
os.environ("HOME")
DIRECTORIO=os.path.expanduser("~/")

DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`

echo "Hoy es el $DIA y la hora actual es $HORA!"
echo "$DIRECTORIO es un directorio y su tamaño es el siguiente:"
du -hs $DIRECTORIO

