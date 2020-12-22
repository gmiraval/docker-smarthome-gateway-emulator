#!/bin/bash
# usage ./create.sh [init port] [end port]
#en firewall esta abierto port del 5000 al 5100
# create 40 containers:
#./create.sh 5000 5039

for i in $(eval echo {$1..$2})
do
          iStr="$(printf '%04d' $i)"
	  MAC="11:22:33:73:${iStr:0:2}:${iStr:2:2}"
	  echo "Creando container sim$i"
          docker run -d -p $i:5051 -e product_id=${MAC} --name sim$i smarthome:$3
done

