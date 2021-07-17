#!/bin/sh

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  Asks a yes or no question and returns either 0 or 1 respectively.

ask_yes_no(){
	answer="$1"
	question="$2"
	while ! printf '%s' "$answer" | grep -q '^\([Yy]\(es\)\?\|[Nn]\(o\)\?\)$'
	do
		printf '%s' "${question} [Y]es/[N]o: "
		read -r answer
	done

	if printf '%s' "$answer" | grep -q '^[Nn]\(o\)\?$'; then
		return 1
	fi
}

# Usage
# The environmental variable "allow_something", can be set beforehand by the user.
# if ask_yes_no "$allow_something" '<Question>'; then
# 	echo 'Do something'
# fi
