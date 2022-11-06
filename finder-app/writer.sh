#!/bin/bash

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then echo "Not enough arguments"
	exit 1
else
	if [ ! -e "${writefile}" ]; then
		mkdir -p "$(dirname "$writefile")" && touch "$writefile"
   		echo $writestr > $writefile
	else
   		echo $writestr >> $writefile
	fi
fi
