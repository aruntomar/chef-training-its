#
# Cookbook Name:: demo_cookbook
# Recipe:: user
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

user_result = search(:users,"id:*")

user_result.each do |u|
  group u['id'] do
    action :create
  end

  user u['id'] do
    comment 'chef user'
    gid u['id']
    shell '/bin/bash'
    manage_home true
  end

  directory "/home/#{u['id']}/.ssh" do
    owner u['id']
    group u['id']
    mode '0744'
    recursive true
    action :create
  end

  cookbook_file "/home/#{u['id']}/.ssh/authorized_keys" do
    source 'arun_authorized_keys'
    owner u['id']
    group u['id']
    mode '0644'
  end

end
