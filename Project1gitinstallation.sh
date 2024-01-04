#!/bin/bash

############################
# Author : Deepak Awar
# Date   : 04 /01 /2024
# purpose: git installation scipt
# version: v1


echo "This is the script to install the git"
echo "installation process started...."
if [ "$(uname)" == "Linux" ];
then
	echo "linux machine found installing git on the linux"
	sudo apt upadate
	sudo apt-get upgradie
	sudo apt-get install git
	git --version
	echo "git installation completed successfully on linux"

elif [ "$(uname)" == "Darwin"];
then 
	echo "Macos found installing git on macos"
	brew install git
	echo "git installation completed successfully on MACos"
else
	echo "Not required installation and updatation"
fi



	
