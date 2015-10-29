#
# Cookbook Name:: demo_cookbook
# Recipe:: user
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

group 'arun' do
  action :create
end

user 'arun' do
  comment 'chef user'
  uid '10001'
  gid 'arun'
  shell '/bin/bash'
  manage_home true
end

directory '/home/arun/.ssh' do
  owner 'arun'
  group 'arun'
  mode '0744'
  recursive true
  action :create
end

cookbook_file '/home/arun/.ssh/authorized_keys' do
  source 'arun_authorized_keys'
  owner 'arun'
  group 'arun'
  mode '0644'
end
