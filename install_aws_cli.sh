#!/bin/bash 
#author : Sheikh Musaib

echo "info : Installing cloud command line utilization for AWS"

#installation of Aws Cli tools
command -v aws > /dev/null

RETURN_CODE="($?)"

if [[ "$RETURN_CODE" -ne 0 ]]; then 
echo "INFO : installing AWS Cli..."

## Install pre-requisites tool
sudo apt-get update -y > /dev/null 2>&1
apt-get install curl unzip -y > /dev/null 2>&1

#Downloading aws file and zip file of aws
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" > /dev/null 2>&1

#unzipping the aws file
unzip awscliv2.zip -d /opt > /dev/null  2>&1

#installing file now
sudo ./aws/install > /dev/null

#deleting the zip file of aws
sudo rm -rf awscliv2.zip
fi 

if command -v aws  > /dev/null;then
echo " Aws installed successfully!!!"
else 
echo "something went wrong while installing Aws"
exit 1
fi


