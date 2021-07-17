#!/bin/sh

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  Checks for missing dependencies

check_dependency(){
	dep_missing=
	for x in "$@"; do
		if ! command -v "$x" >/dev/null 2>&1; then
			dep_missing="${dep_missing}${x}, "
		fi
	done

	if [ -n "$dep_missing" ]; then
		dep_missing="${dep_missing%??}" # Removes last comma and space
		printf '%s' "$dep_missing"
		return 1;
	fi
}

# How TO USE
# missing="$(check_dependency 'sl' 'anything')"
# if [ "$?" -ne '0' ]; then
# 	echo "Error: The following dependencies are missing: ${missing}" >&2
# fi
