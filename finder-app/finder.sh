#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
then echo "Not enough arguments"
	exit 1
else
	if [ -d "${filesdir}" ]
	then 
		X=`find "${filesdir}" -type f | wc -l`
		Y=`grep -r ${searchstr} "${filesdir}" | wc -l`
		echo "The number of files are ${X} and the number of matching lines are ${Y}"
	else echo "${filesdir} is not a directory"
		exit 1
	fi
	exit 0
fi
