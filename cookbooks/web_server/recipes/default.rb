#
# Cookbook Name:: web_server
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

case node.platform
when 'ubuntu'
  #package 'apache2'
  include_recipe "web_server::ubuntu_webserver"
when 'centos'
  #package 'httpd'
  include_recipe "web_server::centos_webserver"
end
