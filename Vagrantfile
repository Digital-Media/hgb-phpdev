# -*- mode: ruby -*-
# vi: set ft=ruby :
# vim: set et :

Vagrant.configure("2") do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # We use a ubuntu box with ubuntu 16.04 LTS based on bento/ubuntu-16.04
  config.vm.box = "fhooe/hgb-phpdev" 
  config.vm.box_version = "~> 1.0"
  config.vm.boot_timeout = 1500

  # If Vagrant always hangs during SSH to box during Startup, this may help if normal troubleshooting doesn't work
  # Deactivate ssh keys for login and use password instead
  # config.ssh.password = "vagrant"
  # config.ssh.insert_key = false

  # Deactivate hardware accelleration for Vitualization in Virtual Box (Don't use Intel or AMD VT-X)
  # config.vm.provider :virtualbox do |vb|
  #  vb.customize ["modifyvm", :id, "--hwvirtex", "off"]
  # end 
  
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # Avoiding IP conflicts with FH network based on 10.*.*.*
  config.vm.network "private_network", ip: "192.168.7.7"

  # Mapping a folder, that can be used for HM2 excercises, allowing apache running as www-data to write data to these directories
  config.vm.synced_folder "code", "/var/www/html/code", create: true, owner: "www-data", group: "www-data"
end