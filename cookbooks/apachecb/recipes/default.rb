#
# Cookbook:: apachecb
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
# Uploading cookbook to GitHub
#
# Testing git add, git commit & git push
#
package 'httpd' do
  action :install
end

service 'httpd' do
  action :restart
end

cookbook_file '/var/www/html/index.html' do
source 'index.html'
mode '0644'
end

template '/var/www/html/index4.html' do
    source 'index4.erb'
      variables(
            :myname => node['apachecb']['myname']
              )
end

file '/tmp/test' do
  action :create
end
