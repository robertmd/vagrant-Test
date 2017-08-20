#
# Cookbook Name:: xinit
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'xinit'

template '/home/vagrant/.profile' do
  source 'xinit.config.erb'
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
end
