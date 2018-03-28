#!/bin/bash




python --version   >/dev/null 2>&1

RC=$?
if [[ $RC -ne "0" ]]; then
	echo "Python not installed"
	echo "Installing Python"
	sudo apt-get install python* -y
else
	echo "Python Already Installed."
fi



