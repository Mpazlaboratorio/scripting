#!/bin/sh
# ---------------------------------------------
# Checha estatus de servicios activos
# Sintaxis: sh servicio.sh {nombre_del_servicio}
# Ejemplo:  sh servicio.sh httpd
# ----------------------------------------------
 
CHECK=$0
SERVICE=$1
DATE=`date`
OUTPUT=$(ps aux | grep -v grep | grep -v $CHECK |grep $1)
#
if [ "${#OUTPUT}" -gt 0 ] ; then
 echo "$DATE: $SERVICE : Servicio ACTIVO, todo marcha bien."
else
 echo "$DATE: $SERVICE : INACTIVO o NO Existente, verificar el problema."
fi
exit 0