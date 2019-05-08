#
# Cookbook:: example-cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# registry_key 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows NT\\Terminal Services' do
#   values [
#     { name: 'DisablePasswordSaving',
#       type: :string,
#       data: '1' }
#   ]
# end
