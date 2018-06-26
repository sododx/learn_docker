#!/bin/bash
echo "###############################"
if [ "$1" == "nginx" ];then
	echo "$0"
	echo -e "nginx:\n\t$@"
	exec "$@"
else
	echo "command arg:"
	echo "$@"	
	echo "run command..."
	exec "$@"
fi

