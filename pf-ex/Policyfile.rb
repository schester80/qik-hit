# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'pf-ex'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'pf-ex::default'

# Specify a custom source for a single cookbook:
cookbook 'pf-ex', path: '.'

cookbook 'motd', '~> 0.6.3', :supermarket
