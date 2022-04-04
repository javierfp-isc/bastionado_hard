#!/bin/bash

[ -f /etc/routes/routes.sh ] && sh /etc/routes/routes.sh

#Arranca ossec (server y agent)
[ -f /etc/init.d/ossec ] && /etc/init.d/ossec start

#Arranca mysql y apache2 (web ui server)
[ -f /etc/init.d/apache2 ] && /etc/init.d/apache2 start
[ -f /etc/init.d/mysql ] && /etc/init.d/mysql start

#Arrranca splunk
[ -f /opt/splunk/bin/splunk ] && /opt/splunk/bin/splunk start

exec bash -c "while true;do sleep 10;done"

