#
# Cookbook Name:: terminator
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'terminator'

directory '/home/vagrant/.config/terminator' do
  recursive true
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
  action :create
end

template '/home/vagrant/.config/terminator/config' do
  source 'terminator.config.erb'
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
end
