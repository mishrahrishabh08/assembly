#!/bin/bash

filename="${1%%.*}" #remove the file extension

#Using as and gcc
as "${filename}.s" -o "${filename}.o"
gcc -o "${filename}" "${filename}.o"

# run the file if not $2 arguement , if -g provided open debugger
[ "$2" == "-g" ] && gdb -q "${filename}" || "./${filename}"
