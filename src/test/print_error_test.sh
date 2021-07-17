#!/bin/sh

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  test print_error.sh

. ./src/main/print_error.sh

test_print_error(){
	message='Something went wrong.'
	result="$(print_error "$message" 2>&1)"
	assertEquals "print_error_test.sh - Error: ${message}" "$result"
}

. /usr/bin/shunit2
