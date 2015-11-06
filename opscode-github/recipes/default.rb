#
# Cookbook Name:: opscode-github
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
git_client 'default' do
  action :install
end

include_recipe 'opscode-github::git'