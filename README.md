# vagrant-poc
This repo demonstrates bootstrapping a Virtualbox machine and running an example Ansible playbook from this repo.

## Pre-requisites

- You must have the following software installed:
  - [VirtualBox](https://www.virtualbox.org/)
  - [Vagrant](https://www.vagrantup.com/)
- You must have environment variable PAT_TOKEN set to a valid github token that can clone public repos 

## Usage

Once the repo is cloned and the required software is installed, simply cd into the repo's root folder and run ```vagrant up```

This POC uses aan image based on Rocky Linux 8. The repo will launch a VirtualBox VM based on rocky linux 8 and then run the small provisioning script ```./scripts/bootstrap.sh```

This provisioning script will install ansible, clone this repo into the VM and run the playbook.yaml playbook.

The playbook just installs  the chrony service. The example playbook and inspiration for this POC project is based on the excellent [Ansible for DevOps](https://leanpub.com/ansible-for-devops) book.

