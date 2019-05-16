#
# Cookbook:: pf-ex
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

Chef::Log.warn 'i am in the BASE recipe'

motd '50-mymotd'
