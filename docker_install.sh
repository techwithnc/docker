#!/bin/bash

#####################################################################################
###         Author:             TechWithNC (www.youtube.com/@techwithnc)          ###
###         Date Created:       20/Jan/2023                                       ###
###         Last Modified:      05/Jun/2023                                       ###
###         Decription:         This script will install docker in Ubuntu.        ###
###         Usges:              ./docker_install.sh                               ###
#####################################################################################

# Uninstall old versions
sudo apt-get remove -y docker docker-engine docker.io containerd runc

# Set up the repository
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key:
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Use the following command to set up the repository:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo
echo "~~~~~~~~~~~~~~~~~~~~~~   Thank You!   ~~~~~~~~~~~~~~~~~~~~~~"
echo
