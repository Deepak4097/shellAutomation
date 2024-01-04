#!/bin/bash

######################################
# Author : Deepak Awar
# Date   : 04/o1/2024
# Purpose: checkig the Disk utilization on system
# version: v1

echo "checking the disk utilization ....."

disk_size=`df -h |grep "/dev/nvme0n1p1" | awk '{print $5}' | cut -d '%' -f1`
echo "$disk_size % of disk is filled" 
if [ $disk_size -gt 80 ];
then
	echo "disk is utilized more than 80% ,pleae expand or delete the unwanted files soon"
else
	echo "enough disk space is available"
fi


