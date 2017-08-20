#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'python-pip'
package 'python-dev'

execute 'pip install awsscout2' do
  command 'pip install --upgrade awsscout2'
  only_if 'which pip'
end

#reboot 'app_requires_reboot' do
#  action :request_reboot
#  reason 'Need to reboot when the run completes successfully.'
#  delay_mins 0
#end
