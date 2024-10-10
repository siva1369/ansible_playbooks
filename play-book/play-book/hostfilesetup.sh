#!/bin/sh

cat /msservice/bin/ansible/hosts/UAT/testlist | while read a
do
ansible-playbook /msservice/bin/ansible/play-book/hostssetp_uat.yml -i /msservice/bin/ansible/hosts/hosts "--extra-vars=appcode=$a env=uat"
done
