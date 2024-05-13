#!/bin/bash

#Author: Shehzad Shaikh
# Initial Released Date: 4th May 2024
# Version: 0.0.1
# Description: Cost Optimization Framework

#Define Variables
ROOT_ID="0"
LOGGED_IN_USERID=$(id -un)

#Sanity check
#if id command output is equal to root then proceed else fail
#if id -un command output == 0  then procced else fail

#sanity check
if [[ "$LOGGED_IN_USERID" -eq "$ROOT_ID" ]];then

#Main Programme Execution.
echo "Info: script is executed with sudo privileges"
echo "Current_Logged in_userid info= $LOGGED_IN_USERID"
else 
echo "please re-run the script with sudo privlleges"
echo "Current logged in userid: $LOGGED_IN_USERID"
exit 1
fi

