#
# Cookbook:: myfirstcookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
# Install httpd package
package "httpd" do
  action :install
end

# Start HTTPD service
service "httpd" do
  action :restart
end
