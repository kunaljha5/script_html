#!/bin/bash 

nodename=$(hostname)

if [[ $nodename  == "ip-172-31-76-181" ]]; then
	echo " [ `hostname` ] Testing Dev Server"
	grep  -i '<title>Dev Team Title</title>' /var/www/html/index.html >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127;fi 
	grep  -i '<h1>Dev Team Heading</h1>' /var/www/html/index.html >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127;fi 
	grep  -i '<p>This Page is for Dev Team</p>' /var/www/html/index.html >/dev/null 2>&1
	if [[ $? -ne "0" ]]; then exit 127;fi 
	echo " [ `hostname` ] Dev Server HTML Page Verified."
	sleep 3;
#elif [[ $nodename == "ip-172-31-66-47" ]]; then
#	echo " [ `hostname` ] Testing Test Server"
#	grep  -i '<title>Test Team Title</title>' /var/www/html/index.html >/dev/null 2>&1
#	if [[ $? -ne "0" ]]; then exit 127;fi 
##	grep  -i '<h1>Test Team Heading</h1>' /var/www/html/index.html >/dev/null 2>&1
#	if [[ $? -ne "0" ]]; then exit 127;fi 
#	grep  -i '<p>This Page is for Test Team</p>' /var/www/html/index.html >/dev/null 2>&1
#	if [[ $? -ne "0" ]]; then exit 127;fi 
#	echo " [ `hostname` ] Test Server HTML Page Verified."
#	sleep 3;
#elif [[ $nodename == "ip-172-31-44-198" ]]; then 
#	echo " [ `hostname` ] Testing Production Server"
#	grep  -i '<title>Prod Team Title</title>' /var/www/html/index.html >/dev/null 2>&1
#	if [[ $? -ne "0" ]]; then exit 127;fi 
#	grep  -i '<h1>Prod Team Heading</h1>' /var/www/html/index.html >/dev/null 2>&1
#	if [[ $? -ne "0" ]]; then exit 127;fi 
#	grep  -i '<p>This Page is for Prod Team</p>' /var/www/html/index.html >/dev/null 2>&1
#	if [[ $? -ne "0" ]]; then exit 127;fi 
#	echo " [ `hostname` ] Prod Server HTML Page Verified."
#	sleep 3;
else
	echo " [ `hostname` ] Unkown host need to manual intervention."
	sleep 3;
	exit 127
fi
