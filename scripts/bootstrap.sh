#!/bin/bash

# Install EPEL repository
sudo yum install -y epel-release

# Install Ansible
sudo yum install -y ansible

echo "PAT token is ${PAT}"

# Clone the playbook repository
rm -rf vagrantpoc 2>/dev/null
git clone "https://${PAT}@github.com/sonalita/vagrant-poc.git"

# Run the playbook
ansible-playbook vagrant-poc/playbook.yaml