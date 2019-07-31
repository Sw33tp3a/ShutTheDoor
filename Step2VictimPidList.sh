#!/bin/bash

cat netstatvictim.txt | grep -oP '(?<=LISTEN      ).*(?=/)' | sort | uniq > openportpids.txt
