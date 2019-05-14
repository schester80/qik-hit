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
