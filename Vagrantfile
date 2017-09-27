# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "boxcutter/ubuntu1604"
  config.vm.box_version = "17.0907.1"

  # port forward
  (4567..4581).to_a.push(8888).to_a.push(80).each do |port|
    config.vm.network "forwarded_port", guest: port, host: port, host_ip: "127.0.0.1"
  end
  config.vm.network "private_network", ip: "192.168.33.10"

  # provider
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2 
    vb.memory = "4096"
  end

  # sync
  config.vm.synced_folder "./vagrant", "/jumeaux"

  # provisioning
  config.vm.provision "docker"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
    # ansible.verbose = "-v"
  end
end

