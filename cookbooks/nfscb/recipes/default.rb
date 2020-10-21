#
# Cookbook:: nfscb
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
# Install NFS packge
package 'nfs-utils' do
  action :install
end

# Start NFS service
service 'nfs' do
  action :start
end
