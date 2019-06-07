name 'motd'

default_source :supermarket

include_policy "epel", path: "./epel.lock.json"

run_list 'motd::default'

cookbook 'motd', '= 0.6.4', :supermarket
