#!/bin/bash

[ -f /etc/routes/routes.sh ] && sh /etc/routes/routes.sh

service syslog-ng start

exec bash -c "while true;do sleep 10;done"

