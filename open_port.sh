#!/bin/bash
if [ x$1 != x ]
then
    iptables -I INPUT -p tcp --dport $1 -j ACCEPT
    iptables --list --line-number | grep $1
else
    echo "error! please run like: sh open_port.sh 3306"
fi
