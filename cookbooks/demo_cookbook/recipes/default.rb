#
# Cookbook Name:: demo_cookbook
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# package 'git' do
#   action :install
# end
#
# package 'apt-cacher-ng' do
#  action :install
# end


execute 'run_apt_get_update' do
  command 'aptitude update; touch /tmp/apt_get_update'
  action :run
  not_if { File.exists?('/tmp/apt_get_update')}
  #not_if { "test -f '/tmp/apt_get_update'" }
end

['git', 'apt-cacher-ng', 'vim', 'fail2ban', 'mysql-server'].each do |pkg|
  package pkg
end

service 'mysql' do
#  action [ :enable, :start ]
  provider Chef::Provider::Service::Upstart
  supports :status => :true, :restart => :true, :reload => :true
  action [:stop]
end


directory '/tmp/chef-training/1/2/3' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

package 'apache2' do
 action :install
end

service 'apache2' do
  supports :status => true
  action [ :enable, :start ]
end

file '/var/www/html/index.html' do
  content '<h1> Welcome to Chef Training </h1>'
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
  notifies :restart, 'service[apache2]', :immediately
end

template '/etc/motd' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '644'
  variables(
  "name" => "Arun",
  "training_name" => "Chef Training"
  )
end

include_recipe "demo_cookbook::user"
include_recipe "tmux"
include_recipe 'demo_cookbook::websites'
