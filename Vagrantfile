# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.box_version = "20211001.0.5"
  config.vm.hostname = "dockervm" 
  config.vm.network "private_network", ip: "192.168.33.20" 
  config.vm.network "public_network"
  config.vm.network "forwarded_port", guest: 50051, host: 50051
  config.vm.synced_folder ".", "/home/vagrant/src" 
  config.vm.provider "virtualbox" do |vb| 
    vb.memory = "4048" 
    vb.name = "lab01-grpc-VM" 
  end 
  config.vm.provision "shell", path: "install_docker.sh", privileged: false 
end