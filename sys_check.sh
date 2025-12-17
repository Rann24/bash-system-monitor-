#!/bin/bash
CURRENT_DATE=$(date)
echo "--- System Report for $CURRENT_DATE ---"
echo "Checking Disk Usage..."
df -h |grep "^/dev/"

echo "-------------------------------------------------"

echo "Checking Memory....."
free -h 

echo "------------------------"

echo " Checking Internet  Connectivity....."

if ping -c 1 google.com &> /dev/null
then 
echo "Success: Internet is connected."
else
 echo " Error: No  Internet connection found."
fi 
echo " Checking CPU Information ..."
lscpu | grep "Model name"

echo "--- End of Report ---"

