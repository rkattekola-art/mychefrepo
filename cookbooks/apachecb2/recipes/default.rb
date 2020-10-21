#
# Cookbook:: apachecb2
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
# Using BASH resource
bash 'webserver2' do
  code <<-EOH
  echo "Welcome to your webserver - WebServer2" >> /var/www/html/index2.html
  EOH
  not_if { ::File.exist?('/var/www/html/index2.html') }
end
