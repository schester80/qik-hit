### check the service
#### watch it pass
```bash
$ chef exec inspec exec check.rb \
--target ssh://vagrant@localhost:2222 \
--password 'vagrant'
```

### stop the service
#### technically you don't need the recipe, you could ..
#### >> simply declare the resource and attributes via CLI
```bash
$ chef exec chef-run vagrant@localhost:2222 stop.rb \
--chef-license accept \
--password 'vagrant' \
--sudo
```

### check the service
#### watch it fail
```bash
$ chef exec inspec exec check.rb \
--target ssh://vagrant@localhost:2222 \
--password 'vagrant'
```

### start the service
```bash
$ chef exec chef-run vagrant@localhost:2222 start.rb \
--password 'vagrant' \
--sudo
```

### check the service
#### watch it pass
```bash
$ chef exec inspec exec check.rb \
--target ssh://vagrant@localhost:2222 \
--password 'vagrant'
```
