#!/bin/bash

# Install EPEL repository
sudo yum install -y epel-release

# Install Ansible
sudo yum install -y ansible

# Clone the playbook repository
git clone https://github.com/sonalita/vagrantpoc.git

# Run the playbook
ansible-playbook vagrant-poc/playbook.yml