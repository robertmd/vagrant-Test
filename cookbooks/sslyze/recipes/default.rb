#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'python-pip'
package 'python-dev'
package "libffi-dev"

execute 'pip install --upgrade setuptools' do
  command 'pip install --upgrade setuptools'
    only_if 'which pip'
end

execute 'pip install sslyze' do
  command 'pip install sslyze'
    only_if 'which pip'
end
