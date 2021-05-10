#!/bin/bash

#Installation of terraform on linux,centos

echo "Executing commands with sudo or with root user"

echo "Installing yum-utils"
[[ ${USER} == "root" ]] && yum -y install yum-utils || sudo yum -y install yum-utils

echo "Adding official hashicorp repository in yum"
[[ ${USER} == "root" ]] && yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo || sudo um-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

echo "Installing latest version of terraform from hashicorp"
[[ ${USER} == "root" ]] && yum -y install terraform || sudo yum -y install terraform

echo "Latest version of terraform installed sucessfully" && terraform -version

echo "Adding auto-completee feature" && terraform -install-autocomplete
