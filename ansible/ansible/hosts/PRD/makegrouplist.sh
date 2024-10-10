#!/bin/sh
echo "---" > instances-vars.yml
echo "servers:" >> instances-vars.yml
cat all-vms.txt | while read a
do
echo "  - name: '$a'" >> instances-vars.yml
echo "    apps:" >> instances-vars.yml
grep $a nstances | awk -F'::' '{print $1}' > dummy
cat dummy | while read a
do
echo "      - '$a'" >> instances-vars.yml
done
done 
