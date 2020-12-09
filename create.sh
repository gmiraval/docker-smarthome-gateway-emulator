#!/bin/bash

for i in $(eval echo {$1..$2})
do
          iStr="$(printf '%04d' $i)"
          echo "Creating container sim$i"
          docker run -d -p $i:5051 -e product_id='11:22:33:73:${iStr:0:2}:${iStr:2:2}' --name sim$i smarthome:1.1
done
