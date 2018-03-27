#!/bin/bash

#
# Do NOT move this script from this location
# 
# Property of MKAdvantage, Inc, All Rights Reserved 2017
#

basedir=`cat /var/www/html/nochero/app/server/config.ini | grep basedir | cut -f2 -d= | tr -d '"' | tr -d '[:space:]'`


alltasks=`/usr/bin/mysql -unhp123!!! -p'nhp123!!!' -A nochero_pilot -e 'select actionfilename, actiontext from tasks \G'`

while read -r line; do

	if [[ $line =~ 'actionfilename:' ]] 
	then
		currentfile=`echo "$line" | cut -f2 -d: | tr -d '[:space:]'`
		echo "" > /tmp/$currentfile
	else
		if [[ ! -d /tmp/$currentfile ]]; then
		echo "$line" | tr -d '
		fi
	fi

done <<< "$alltasks"
