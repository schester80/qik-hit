name 'my_cb_b'

default_source :supermarket

run_list 'my_cb_b::default'

cookbook 'my_cb_b', path: '.'
