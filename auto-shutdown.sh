#!/bin/bash

while :
do
	sleep 180
	ISRUNNING=$(virsh list --all | grep running)

	printf "%s\n" "$ISRUNNING"


	if [[ $ISRUNNING == *"running"* ]]
	then
		echo "A Virtual Machine is running!"
	else
		echo -e "All Virtual Machines are down!\nShutting down!"
		break
	fi

done

printf "%s\n" "Running shutdown command..."
shutdown +3
