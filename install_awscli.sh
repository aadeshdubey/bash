#!/bin/bash


#Install latest version of aws cli

#Download latest version of aws cli

echo "Downloading latest version of aws cli package"
[[ ${USER} == root ]] && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" || sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "Downloaded aws cli package to current directory"

echo "Extract aws cli package to current directory"

[[ -s awscliv2.zip ]] && unzip awscliv2.zip && echo "Package unzipped successfully"

echo "Installing aws cli package"

[[ ${USER} == "root" ]] && ./aws/install || sudo ./aws/install

echo "Installation of aws cli completed successfully" && aws --version

