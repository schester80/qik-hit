#### You will see in the my_cb_a cookbook  a dependency on the 'motd' cookbook
##### It pulls that dependency from the public supermarket
```
name 'my_cb_a'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures my_cb_a'
long_description 'Installs/Configures my_cb_a'
version '0.1.0'
chef_version '>= 14.0'

depends 'motd'
```

#### See how the Policyfile was able to determine the dependency defined in my_cb_a
```
...
resolving cookbooks for run list: ["my_cb_a::default@0.1.0 (d324c8c)", "my_cb_b::default@0.1.0 (6163c0e)"]
[2019-06-20T17:45:50+00:00] INFO: Loading cookbooks [chef_handler@3.0.3, motd@0.6.4, my_cb_a@0.1.0, my_cb_b@0.1.0]
Synchronizing Cookbooks:
...
```

#### Look how both cookbooks are included for execution
```
...
Compiling Cookbooks...
[2019-06-20T17:13:39+00:00] WARN: this is cookbook A ..
[2019-06-20T17:13:39+00:00] WARN: this is cookbook B ..
Converging 0 resources
...
```
