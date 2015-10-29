#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

template "/etc/motd" do
  source "server-info.erb"
  mode "0644"
end

package "vim"

file '/tmp/hello' do
  content 'hello'
  mode '0644'
end
