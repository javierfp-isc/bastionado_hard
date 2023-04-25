#!/bin/bash

#Si existe el archivo /etc/routes lo ejecuta
[ -f /etc/routes ] && sh /etc/routes

#Cargamos iptables almacenadas si existe el archivo
[ -f /etc/iptables/rules.v4 ] && iptables-restore < /etc/iptables/rules.v4

#Arranque para debian
#Servidor
[ -f /etc/init.d/urbackupsrv ] && /etc/init.d/urbackupsrv start
#Cliente
[ -f /etc/init.d/urbackupclientbackend ] && /etc/init.d/urbackupclientbackend start

exec bash -c "while true;do sleep 10;done"
