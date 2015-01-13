#!/bin/bash

function graph_insert {
#graph is $1, key is $2, value is $3  
#insert creates a file with whatever $2 contains 
	mkdir ./$1/$2
	echo $3 > ./$1/$2/$2
}

function graph_retrieve {
#graph is $1, key is $2
#A simple cat gets the value back 
	cat ./$1/$2/$2
}

function graph_edge_retrieve {
#graph is $1, key is $2
	find ./$1/$2 -type f ! -name $2 -exec echo {} \; -exec cat {} \;
}

function graph_delete {
#graph is $1
	rm -rf ./$1
}

function graph_edge {
#graph is $1, key is $2, key2 is $3, weight (optional) is $4 
	echo $4 > ./$1/$2/$3
}

function graph_edge_delete {
#graph is $1, key is $2, key2 is $3
	rm -f ./$1/$2/$3
}

function graph_swap {
#graph is $1 key 1 is $2 key 2 is $3 
	local temp=`cat ./$1/$2/$2`
	cat ./$1/$3/$3 > ./$1/$2/$2
	echo $temp > ./$1/$3/$3
}

function graph_size {
#map is $1
	 du -s $1 | awk '{print $1}'
}

function graph_find {
#graph is $1, key to be found is $2
	if [ ! -f ./$1/$2 ]; then 
		echo "0"
	else
		echo ./$1/$2
	fi
}

function graph_count {
#graph is $1, key is $2
	if [ ! -f ./$1/$2 ]; then
		echo "0"
	else
		echo "1"
	fi
}

function graph_value_compare {
#graph is $1, key is $2, key is $3 
	if [ `cat ./$1/$2/$2` -gt `cat ./$1/$3/$3` ]; then
		echo "./$1/$2"
	else
		echo "./$1/$3"
	fi
}
