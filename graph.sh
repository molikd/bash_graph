#!/bin/bash

#NOTE: this map creates a .tmp in the working dirctory  

if [ "`type -t graph_insert`" != 'function' ]; then
	source graph_funcs.sh
fi

graph_created="0"
GRAPHLOCATION=".tmp"

while [ "$graph_created" -eq "0" ]
do
	GRAPHLOCATION=$GRAPHLOCATION$RANDOM$(date +"%Y%j%H%M%S")
	if [ ! -d "$GRAPHLOCATION" ]; then
		mkdir $GRAPHLOCATION
		graph_created="1"
	fi
done

echo $GRAPHLOCATION
