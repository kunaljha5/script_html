#!/bin/bash 

nodename=$(hostname)

if [[ $nodename  == "ip-172-31-76-181" ]]; then
	echo " [ `hostname` ] Deploying Localhost Dev HTML Page"
	sudo cp -p index_dev_team.html /var/www/html/index.html
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] Deployed Localhost Dev HTML Page"; fi 
	sleep 3;
else
	echo " [ `hostname` ] Unkown host need to manual intervention."
	sleep 3;
	exit 127
fi
