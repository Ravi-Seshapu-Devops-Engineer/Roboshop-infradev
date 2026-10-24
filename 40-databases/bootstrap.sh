#!/bin/bash

component=$1
dnf install ansible -y
cd /home/ec2-user

git clone https://github.com/Ravi-Seshapu-Devops-Engineer/roboshop-ansible-roles-tf.git
cd roboshop-ansible-roles-tf

ansible-playbook -e component="$component" roboshop.yaml
