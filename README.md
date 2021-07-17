# Shnippets

A collection of POSIX compliant shell script snippets.

![master branch](https://github.com/ahmedelhori/shnippets/actions/workflows/ci.yml/badge.svg)

## Contribution 
* Every submitted snippet has to have sufficient testing
* All submitted snippets have to pass the CI pipeline
* Only POSIX compliant code will be accepted


## Example:
`./src/main/snippet.sh`
```
#!/bin/sh

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  Example snippet

snippet(){
	echo 'Example snippet'
}

# Usage
# snippet
```

`./src/test/snippet_test.sh`
```
#!/bin/sh

# Author:       Ahmed Elhori <dev@elhori.com>
# License:      GNU GPLv3
# Description:  Test snippet.sh

. ./src/main/snippet.sh

test_snippet(){
	result="$(snippet)"
	assertEquals 'Optional message' 'Example snippet' "$result"
}

. /usr/bin/shunit2
```

## Testing
You can either test this yourself, by having `Shunit2` installed, and running the following command:
```
sh test.sh
```
Or by having Docker installed, and running the following command:
```
docker build . -t shnippets && docker run --rm shnippets
```
