#
# Cookbook Name:: windows_software
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

windows_package 'PuTTY version 0.60' do
  source 'http://the.earth.li/~sgtatham/putty/latest/x86/putty.exe'
  installer_type :inno
  action :install
end

windows_package '7-Zip 9.20 (x64 edition)' do
  source 'http://www.7-zip.org/a/7z920-x64.msi'
  action :install
end
