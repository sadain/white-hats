#!/bin/bash 

read -p"Host:"host

ochksum=`md5sum $host | awk -F " " '{print $1}'`
nchksum=`cat /tmp/checkMD5`

if [ "$ochksum" == "$nchksum" ]; then
	$($ssh -p "password" ssh -o StrictHostKeyChecking=no -l pi 127.0.0.1 "echo 'Thread Found' | wall " 2>/dev/null)

fi

