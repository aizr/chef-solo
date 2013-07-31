#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user node[:user][:name] do
  password node[:user][:passeord]
  home "/home/#{node[:user][:name]}"
  shell "/bin/bash"
  supports :manage_home => true
end

directory "/home/deployer/example" do
  owner "deployer"
end

file "/home/deployer/example/index.html" do
  owner "deployer"
  content "<h1>Hello</h1>"
end

template "/etc/nginx/sites-available/example" do
  source "example-site.erb"
end

link "/etc/nginx/sites-enabled/example" do
  to "/etc/nginx/sites-av/example"
end