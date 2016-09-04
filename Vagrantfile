# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.omnibus.chef_version = :latest

  config.vm.provider "virtualbox" do |vb|
     vb.gui = true
   end

  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "test"
    chef.add_recipe "i3"
    chef.add_recipe "xinit"
    chef.add_recipe "terminator"
  end
end
