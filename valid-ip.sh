#! /bin/bash

if (( $# == 1 )) 
then
	ip=$1
	if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]
	then
		OIFS=$IFS
        IFS='.'
        ip=($ip)
        IFS=$OIFS
        if [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
		then
			echo "L'IP est valide"
		else
			echo "L'IP n'est pas valide"
		fi
	else
		echo "L'IP n'est pas valide"
	fi
else
	echo "Usage: ./valid-ip <IP_A_TESTER>"
fi
