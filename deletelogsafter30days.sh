#!/bin/bash
##################
# Author  : Deepak Awar
# Date    : 04/01/2024
# Purpose : This script delete logfiles which are older than 30 days
# version : v1

echo "log rotation mechanism"
path= "$1"
echo $path
find $path -mtime +30 -delete
if [ $? -eq 0 ]
then
	echo "files are succesfully deleted "
else
	echo "deletion mechanisam having issue"
fi

