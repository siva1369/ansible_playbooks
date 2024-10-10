#!/bin/sh

cat /msservice/bin/ansible/hosts/DR/testlist | while read a
do
ansible-playbook /msservice/bin/ansible/play-book/hostssetp_dr.yml -i /msservice/bin/ansible/hosts/hosts "--extra-vars=appcode=$a env=dr"
done
