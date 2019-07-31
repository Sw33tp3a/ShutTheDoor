#!/bin/bash
apache2ctl stop
/etc/init.d/mysql stop
netstat -lntpu > netstatvictim.txt
cat netstatvictim.txt | grep -oP '(?<=LISTEN      ).*(?=/)' | sort | uniq > openportpids.txt
for pid in $(cat openportpids.txt);do kill $pid
done
