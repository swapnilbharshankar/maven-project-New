#!/bin/bash
bash /opt/tomcat/bin/startup.sh
responce=`curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8080`
if [ "$responce" == "200" ]
then
	echo "responce is 200 ok"  > /dev/nulll
else
	echo "problem with availability"
	exit 0
fi
