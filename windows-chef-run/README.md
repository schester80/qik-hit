## Go For It
```bash
# locally stand up the node
vagrant up

# go check out the node and run chef-client
chef-client --chef-license accept

# go run the recipe
chef-run winrm://vagrant@localhost:55985 \
my-first-recipe.rb \
--password 'vagrant'
```

## Detect and Correct
```bash
# detect
inspec exec \
admin-cis-windows2016rtm-release1607-level1-domaincontroller-1.1.0-1.tar.gz \
--target winrm://vagrant@localhost:55985 \
--password 'vagrant' \
--reporter documentation:./output.txt

# correct
chef-run \
winrm://vagrant@localhost:55985 \
correct.rb \
--password 'vagrant'
```
