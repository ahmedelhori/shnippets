#!/bin/sh

for file in ./src/main/*.sh; do
	shellcheck "$file" || exit 1

	if ! sed -n '/^#!\/bin\/sh/q' "$file"; then
		echo 'Error: Shebang not found on first line.'
		exit 1
	fi
done

for file in ./src/test/*.sh; do
	sh "$file"
done
