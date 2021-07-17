#!/bin/sh

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  Test check_dependency.sh

. ./src/main/check_dependency.sh

test_dep_available(){
	assertTrue 'Dependencies should be Available' "check_dependency 'ls' 'cd'"
}

test_dep_not_available(){
	assertFalse 'Dependencies should not be available' "check_dependency 'sl'"
}

test_set_missing_dep(){
	missing="$(check_dependency 'sl' 'anything')"
	assertEquals 'Should have outputted missing dependencies' 'sl, anything' "$missing"
}

. /usr/bin/shunit2
