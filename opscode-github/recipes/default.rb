#
# Cookbook Name:: opscode-github
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
git_client 'default' do
  action :install
end

execute 'upgrade chef' do
  command 'curl -L https://www.opscode.com/chef/install.sh | sudo bash'
  action :run
end


include_recipe 'opscode-github::git'
include_recipe 'opscode-github::docker'


