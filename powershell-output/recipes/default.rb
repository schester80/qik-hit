#
# Cookbook:: powershell-output
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

Chef::Log.warn 'hello world'

script = <<-EOH
  Get-Service -Name 'WLMS'
EOH

puts 'START running powershell'

result = powershell_out(script)

puts 'END running powershell'

# https://www.rubydoc.info/github/opscode/mixlib-shellout/Mixlib/ShellOut
puts "result class #{result.class}"

# https://ruby-doc.org/core-2.5.0/String.html
puts "result.stdout class #{result.stdout.class}"

puts result.stdout
