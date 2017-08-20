#
# Cookbook Name:: i3
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'i3'


directory '/home/vagrant/.i3' do
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
