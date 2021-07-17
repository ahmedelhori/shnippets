#!/bin/sh

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  A unified error function

# ENV
NAME="$(basename "$0")"

print_error(){
	message="$1"
	echo "${NAME} - Error: ${message}" >&2
}

# Usage
# print_error 'Something went wrong'
