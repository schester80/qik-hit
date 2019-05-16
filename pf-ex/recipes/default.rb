#
# Cookbook:: pf-ex
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


Chef::Log.warn 'i am in the DEFAULT recipe'


node.default['myrole'] =
  node.policy_group.split('-')[0] unless node['myrole']

node.default['myenvironment'] =
  node.policy_group.split('-')[1] unless node['myenvironment']


Chef::Log.warn "policy group role #{node['myrole']}"
Chef::Log.warn "policy group environment #{node['myenvironment']}"


include_recipe "pf-ex::#{node['myenvironment']}"


include_recipe "pf-ex::base"


include_recipe "pf-ex::#{node['myrole']}"
