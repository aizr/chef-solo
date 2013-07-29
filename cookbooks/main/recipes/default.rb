#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user "deployer" do
  password "$1$mfiBUi8F$0HdIS6iIttKW8pgkafuaB0"
  home "/home/deployer"
  shell "/bin/bash"
  supports :manage_home => true
end