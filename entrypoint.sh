#!/bin/sh
set -e

run () {
	nim c -r --passL:-static --verbosity:3 $1
}

compile () {
	nim c -d:release --passL:-static --opt:size --verbosity:3 $1
}

_sh () {
	/bin/sh
}

usage () {
	echo "This is a Docker container that allows you to build and run your Nim programs!"
	echo "It's based on Alpine so it's using musl libc by default (glibc option is in the works!)"
	echo "Usage:"
	echo "   run file.nim 	runs your Nim program and display it's output."
	echo "   build file.nim 	builds your Nim program. Output binary will be located at the volume you monted to the container" 
	echo
	exit 1
}

case "$1" in
    "build") compile $2;;
    "run") run $2;;
    "sh") _sh;;
    *) usage;;
esac

