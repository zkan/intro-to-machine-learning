# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.host_name = "intro-to-machine-learning"
    config.vm.network "private_network", ip: "192.168.100.11"

    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", "1048"]
    end

    config.vm.provision "shell", path: "setup/bootstrap.sh"
end
