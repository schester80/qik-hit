name 'epel'

default_source :supermarket

run_list 'yum-epel::default'

cookbook 'yum-epel', '= 3.3.0', :supermarket
