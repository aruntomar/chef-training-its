#
# Cookbook Name:: adminuser
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe "build-essential"

directory "/root/.ssh" do
  owner "root"
  group "root"
  mode 0700
  action :create
end

cookbook_file "/root/.ssh/authorized_keys" do
  source "authorized_file"
  owner "root"
  group "root"
  mode "0600"
end


template "/etc/motd" do
  source "motd.erb"
  owner "root"
  group "root"
  mode 0644
  variables({
    :content => "Welcome to Colt"
            })
end


package 'vim'
