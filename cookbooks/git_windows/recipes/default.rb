#
# Cookbook Name:: git_windows
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

windows_package "Git-1.9.5-preview20141217" do                                                                               │································
  #source "C:\git.exe"                                                                                                       │································
  action :install                                                                                                            │································
  source 'https://github.com/msysgit/msysgit/releases/download/Git-1.9.5-preview20141217/Git-1.9.5-preview20141217.exe'      │································
  installer_type :inno                                                                                                       │································
end          
