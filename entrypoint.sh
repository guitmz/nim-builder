#!/bin/sh
set -e

run () {
	nim c -r --verbosity:0 $1
}

compile () {
	nim c --verbosity:0 $1
}

usage () {
	echo "no such thing yet!"
	exit 1
}

case "$1" in
    "build") compile $2;;
    "run") run $2;;
    *) usage;;
esac

