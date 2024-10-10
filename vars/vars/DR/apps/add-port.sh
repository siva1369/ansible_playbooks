#!/bin/sh
cat files.txt | while read a
do
port=`curl -s http://mstbp-eureka-ws.glb.ebc.local:10063/serviceregistry/eureka/apps/$a | grep port | head -1 | cut -d "<" -f2 | cut -d ">" -f2`
echo "port: $port" >> $a.yml
done

