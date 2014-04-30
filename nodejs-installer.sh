#!/bin/bash

case "$1" in
    'ubuntu')
        echo "installing nodejs for ubuntu"
        sudo add-apt-repository ppa:chris-lea/node.js -y
        sudo apt-get update
        sudo apt-get install python-software-properties python g++ make nodejs
        ;;
    'centos')
        echo "installing nodejs for centos"
        sudo rpm --import https://fedoraproject.org/static/0608B895.txt
        sudo rpm -Uvh http://download-i2.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
        sudo yum install nodejs npm --enablerepo=epel
        ;;
esac