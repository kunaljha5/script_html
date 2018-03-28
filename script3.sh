#!/bin/bash 

nodename=$(hostname)

if [[ $nodename  == "ip-172-31-64-64" ]]; then
	echo " [ `hostname` ] Deploying Localhost Dev HTML Page"
	sudo cp -p index_dev_team.html /var/www/html/index.html
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] Deployed Localhost Dev HTML Page"; fi 
	sleep 3;
elif [[ $nodename == "ip-172-31-66-47" ]]; then
	echo " [ `hostname` ] Deploying Localhost Testing HTML Page"
	sudo cp -p index_test_team.html /var/www/html/index.html
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] Deployed Localhost Test HTML Page"; fi 
	sleep 3;
elif [[ $nodename == "ip-172-31-44-198" ]]; then 
	echo " [ `hostname` ] Deploying Localhost Production HTML Page"
	sudo cp -p index_prod_team.html /var/www/html/index.html
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] Deployed Production Test HTML Page"; fi 
	sleep 3;
else
	echo " [ `hostname` ] Unkown host need to manual intervention."
	sleep 3;
	exit 127
fi
