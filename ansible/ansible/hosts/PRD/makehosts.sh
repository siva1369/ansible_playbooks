#!/bin/sh

cat carli-vms.txt | while read a
do
grep $a prod-vms.txt >> appsonCarli.txt
done
cat mech-vms.txt | while read b
do
grep $b prod-vms.txt >> appsonMech.txt
done
cat testlist | while read c
do
echo "[$c-carli]" >> host-file
grep $c appsonCarli.txt | awk -F'::' '{print $2}' >> host-file
echo "[$c-mechelen]" >> host-file
grep $c appsonMech.txt | awk -F'::' '{print $2}' >> host-file
echo "[$c-prd:children]" >> host-file
echo "$c-carli" >> host-file
echo "$c-mechelen" >> host-file
done
