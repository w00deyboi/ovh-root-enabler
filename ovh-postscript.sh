#!/bin/bash

if [[ $(grep "no-port-forwarding" /root/.ssh/authorized_keys) ]];then
    sed -i -e 's/no-port.*\" //' /root/.ssh/authorized_keys
    if [[ $(id -u debian) ]];then
        userdel -r -f debian
    fi 
fi
