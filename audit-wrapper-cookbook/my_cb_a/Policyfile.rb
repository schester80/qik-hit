name 'my_cb_a'

default_source :supermarket

run_list 'my_cb_a::default'

cookbook 'my_cb_a', path: '.'
