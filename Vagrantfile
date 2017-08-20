# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/precise64"
  config.omnibus.chef_version = :latest

  config.vm.provider "virtualbox" do |vb|
     vb.gui = true
     vb.memory = 4096
     vb.cpus = 2
   end

  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "apt"
    chef.add_recipe "test"
    chef.add_recipe "i3"
    chef.add_recipe "xinit"
    chef.add_recipe "terminator"
    chef.add_recipe "awscli"
    chef.add_recipe "scout2"
    chef.add_recipe "sslyze"
  end
end
