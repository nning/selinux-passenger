#!/bin/sh

[ "$1" = "" ] && {
	echo "Usage: $(basename $0) <module-name>" >&2
	exit 1
}

checkmodule -M -m -o $1.mod $1.te
semodule_package -o $1.pp -m $1.mod
semodule -i $1.pp 
