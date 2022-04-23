#!/bin/bash

[ -f /etc/routes/routes.sh ] && sh /etc/routes/routes.sh

exec bash -c "while true;do sleep 10;done"

