#
# Cookbook:: apachecb3
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
# Use FILE Resource
file '/var/www/html/index3.html' do
  user 'root'
  group 'root'
  mode '644'
  content "Welcome to your webserver - WebServer3\n"
  action :create
end
