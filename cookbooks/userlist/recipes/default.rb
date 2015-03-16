#
# Cookbook Name:: userlist
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

directory "/tmp/folder" do
  owner 'kishor'
  group 'root'
  mode '0755'
  action :create
end

%w( kishor1 jean1 ciprian1 phillipp1 bernardo1 kerstin1 ).each do |u|
  user u do
    action :create
  end
end

user 'chef_trainer' do
  password '$1$whjHCk0G$NyG0uFeRauoIrccl1jmui.'
  action :create
end

remote_file "C:\git.exe" do
  source 'https://github.com/msysgit/msysgit/releases/download/Git-1.9.5-preview20141217/Git-1.9.5-preview20141217.exe'
  action :create_if_missing
end

windows_package "name" do
  action :install
  source C:\git.exe
end
