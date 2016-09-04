#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'zsh'
package 'xinit'
package 'i3'
package 'terminator'
package 'git'

directory '/home/vagrant/.i3' do
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
  action :create
end

directory '/home/vagrant/.config/terminator' do
  recursive true
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
  action :create
end

template '/home/vagrant/.i3/config' do
  source 'i3.config.erb'
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
end

template '/home/vagrant/.profile' do
  source 'profile.config.erb'
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
end

template '/home/vagrant/.config/terminator/config' do
  source 'terminator.config.erb'
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
end
