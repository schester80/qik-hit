## Detect Compliance
```bash
chef exec inspec exec \
admin-cis-centos6-level1-1.1.0-7.tar.gz \
--target ssh://vagrant@localhost:2222 \
--password 'vagrant'
```

![InSpec Output](./inspec-profile-output.png "InSpec Porfile Output")
