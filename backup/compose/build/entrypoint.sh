#!/bin/bash

#Si existe el archivo /etc/routes lo ejecuta
[ -f /etc/routes ] && sh /etc/routes

#Cargamos iptables almacenadas si existe el archivo
[ -f /etc/iptables/rules.v4 ] && iptables-restore < /etc/iptables/rules.v4

#Si dispone de systemd lo arranca
[ -f /lib/systemd/systemd ] && exec /lib/systemd/systemd
