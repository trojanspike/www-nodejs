#!/usr/bin/env bash


function init {

}


## test which user
if [ $UID -ne 0 ]; then
	echo "You must run this script as root user"
	exit 1
else
    # is root | sudo , run init
	echo "@ root"
	init
fi