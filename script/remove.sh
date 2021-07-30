#!/bin/bash

IP_address=
port=
username=
password=
zip=

cd /home/pi/Documents/backup
tmp=`find . -type f -mtime +7 -name '*.zip'`
echo $tmp
rm -f $tmp

lftp ftp://$username:$password@$IP_address:$port << EOF
cd /"Disque dur"/backup
rm -f $tmp
quit
EOF