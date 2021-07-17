#!/bin/sh

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  Checks for root privileges

check_root(){
	if [ "$(id -u)" -ne '0' ]; then
		return 1
	fi
}

# Usage
# if ! check_root; then
# 	echo "Error: Need root access"
# 	exit 1
# fi
