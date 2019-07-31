#!/bin/bash

apache2ctl stop
/etc/init.d/mysql stop
for pid in $(cat openportpids.txt);do kill $pid
done
