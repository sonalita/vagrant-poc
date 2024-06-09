# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "poc" do |poc|
    poc.vm.box = "geerlingguy/rockylinux8"
    poc.vm.provision "shell", path: "scripts/bootstrap.sh", env: {"PAT" => ENV['PAT_TOKEN']}
    poc.hostname = "ansiblepoc"
  end

  # example for multiple VMs - you could pass an additional parameter to the script to differentiate between ansible roles/playbooks
  # or use a different script for each VM
  #config.vm.define "poc2" do |poc2|

  #  gen2.vm.box = "geerlingguy/rockylinux8"
  #  gen2.vm.provision "shell", path: "scripts/bootstrap.sh", env: {"PAT" => ENV['PAT_TOKEN']}
  #end

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
     config.vm.network "public_network"
 
end
