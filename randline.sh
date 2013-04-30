#!/usr/bin/env zsh
randline () {
	z=$(wc -l <$1)
	raw=`od -A n -t d -N 1 /dev/urandom`
	nbr=${raw// /}
	((ln=$nbr % $z + 1))
	sed -n ${ln}p $1
}

randline $1
