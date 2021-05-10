#!/bin/bash

#Install Latest Version of git in Linux,CentOS

#Check user Privs

[[ ${USER} != "root" ]] && echo "Execute script with root user" && exit 1

echo "Installing latest version of git"
yum -y install git && echo "Successfullly installed latest version of git" && git --version

 
