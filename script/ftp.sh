#!/bin/bash

IP_address=
port=
username=
password=
zip=

lftp ftp://$username:$password@$IP_address:$port << EOF
cd /"Disque dur"/backup
put /home/pi/Documents/backup/$zip.zip
quit
EOF