#!/bin/bash

sudo yum update
#Installing Java, Maven & Jenkins
sudo yum install yum-utils epel-release -y
sudo yum install java maven wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y

# installing Docker
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin --allowerasing

# to change the jenkins port using env varible 
# Environment="JENKINS_PORT=8090"
