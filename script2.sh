#!/bin/bash



systemctl status apache2 >/dev/null 2>&1

if [[ $? -ne "0" ]]; then 
	sudo apt-get update -y  >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; fi 
	sudo apt-get install apache2 -y  >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; fi 
	sudo apache2ctl configtest  >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; fi 
	WC=`grep ServerName  /etc/apache2/apache2.conf|grep -v "^#"|wc -l `
	if [[ $? -ne "0" ]]; then exit 127; fi 
	if [[ $WC -eq "0" ]]; then
		echo "ServerName localhost" >>  /etc/apache2/apache2.conf
	fi 
	sudo apache2ctl configtest
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] Apache Configuration Tested Successfully."; fi
	sudo systemctl restart apache2 >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] Apache Restarted Successfully."; fi 
	sudo ufw app list >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; fi 
	sudo ufw app info "Apache Full" >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; fi 
	sudo ufw allow in "Apache Full" >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] Apache Allowed on ufw Successfully."; fi 
	sudo apt-get install curl -y >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] CURL Installed Successfully."; fi 
	curl  -s http://localhost >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] URL TESTED with localhost Successfully."; fi 
	IP=`curl http://icanhazip.com` >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; fi 
	curl -s http://$IP >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ] URL TESTED with $IP Successfully."; fi 
	systemctl status apache2 >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127; else echo " [ `hostname` ]  Apache Installed Successfully."; fi 
else
	echo " [ `hostname` ] Apache Already Installed."
fi

