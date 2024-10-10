#!/bin/sh

cat /msservice/bin/ansible/hosts/PRD/testlist | while read a
do
ansible-playbook /msservice/bin/ansible/play-book/hostssetp_prd.yml -i /msservice/bin/ansible/hosts/hosts "--extra-vars=appcode=$a env=prd"
done
