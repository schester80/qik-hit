name 'all_my_cb'

default_source :supermarket

run_list 'my_cb_a::default', 'my_cb_b::default'

cookbook 'my_cb_a', path: './my_cb_a'
cookbook 'motd', '= 0.6.4', :supermarket

cookbook 'my_cb_b', path: './my_cb_b'
