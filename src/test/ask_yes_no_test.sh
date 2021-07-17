#!/bin/sh

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  Test ask_yes_no.sh

. ./src/main/ask_yes_no.sh

test_yes(){
	assertTrue "ask_yes_no 'yes' 'question'"
	assertTrue "ask_yes_no 'Yes' 'question'"
	assertTrue "ask_yes_no 'y' 'question'"
	assertTrue "ask_yes_no 'Y' 'question'"
	read(){ answer='yes';}
	value="$(ask_yes_no 'ye' 'question')"
	assertEquals 'question [Y]es/[N]o: ' "$value"
}

test_no(){
	assertFalse "ask_yes_no 'no' 'question'"
	assertFalse "ask_yes_no 'No' 'question'"
	assertFalse "ask_yes_no 'n' 'question'"
	assertFalse "ask_yes_no 'N' 'question'"
	read(){ answer='no';}
	value="$(ask_yes_no 'noo' 'question')"
	assertEquals 'question [Y]es/[N]o: ' "$value"
}

. /usr/bin/shunit2
