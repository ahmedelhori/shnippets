#!/bin/bash

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  Test check_root.sh

. ./src/main/check_root.sh


test_root(){
	id(){ printf '0'; }
	assertTrue 'Should have root access' check_root
}


test_not_root(){
	id(){ printf '1000'; }
	assertFalse 'Should not have root access' check_root
}

. /usr/bin/shunit2
