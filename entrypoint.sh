#!/bin/sh
set -e

run () {
	nim c -r --verbosity:0 $2
}

compile () {
	nim c --verbosity:0 $2
}

usage () {
	echo "Not implemented!"
	exit 1
}

case "$1" in
    "build") compile $2;;
    "run") run $2;;
    *) usage;;
esac

