# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = "20171030.0.0"

  # port forward
  (4567..4581).to_a.push(8888).to_a.push(80).each do |port|
    config.vm.network "forwarded_port", guest: port, host: port, host_ip: "127.0.0.1"
  end
  config.vm.network "private_network", ip: "192.168.33.10"

  # provider
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4 
    vb.memory = "4096"
    # Once built Miroir image, 4CPU and 2048MB are too enough.
    #vb.cpus = 2 
    #vb.memory = "2048"
  end

  # sync
  config.vm.synced_folder "./vagrant", "/jumeaux"

  # provisioning
  config.vm.provision "docker"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "ansible/site.yml"
    # ansible.verbose = "-v"
  end
  config.vm.provision "shell", run: "always", inline: "/home/vagrant/bootstrap.sh"
end

