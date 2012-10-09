#!/bin/bash

rhelhost="$1"
PUBLIC='keys/id_rsa.pub'

if [ ! -r "${PUBLIC}" ]; then
  echo 'COuld not find public key'
fi

ssh-copy-id -i ${PUBLIC} root@${rhelhost}
ssh ${rhelhost} -- yum -y install python-simplejson

