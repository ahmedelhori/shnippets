#!/bin/sh

for file in ./src/main/*.sh; do
	shellcheck "$file" || exit 1
done

for file in ./src/test/*.sh; do
	sh "$file"
done
