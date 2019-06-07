## building the PFs
### where i am
```bash
$ pwd
/Users/gkspranger/git/qik-hit/policyfile-kitchen/policies
```

### build the epel PF
```bash
$ chef install epel.rb
Building policy epel
Expanded run list: recipe[yum-epel::default]
Caching Cookbooks...
Using      yum-epel 3.3.0

Lockfile written to /Users/gkspranger/git/qik-hit/policyfile-kitchen/policies/epel.lock.json
Policy revision id: 0680cede88bdf99b88777479be96fb38552926f36fdb3ed2148404a6cf5f3493
```

### build the motd PF
#### notice i had to build epel PF before motd PF
```bash
$ chef install motd.rb
Building policy motd
Expanded run list: recipe[yum-epel::default], recipe[motd::default]
Caching Cookbooks...
Using      yum-epel     3.3.0
Using      motd         0.6.4
Using      chef_handler 3.0.3

Lockfile written to /Users/gkspranger/git/qik-hit/policyfile-kitchen/policies/motd.lock.json
Policy revision id: 14a064b52e8075f956b4c0a4121c24f1342ac3094633da159ab2548d3749e091
```

## converging kitchen
### where i am
```bash
$ pwd
/Users/gkspranger/git/qik-hit/policyfile-kitchen/roles/motd
```

### converge kitchen
```bash
$ kitchen converge
-----> Starting Kitchen (v2.2.5)
-----> Creating <default-bento-centos-76>...
       Bringing machine 'default' up with 'virtualbox' provider...
       ==> default: Importing base box 'bento/centos-7.6'...
...
Installing cookbooks from lock
       Using      chef_handler 3.0.3
       Using      motd         0.6.4
       Using      yum-epel     3.3.0
...
[2019-06-07T19:09:42+00:00] INFO: Run List is [["recipe[yum-epel::default]", "recipe[motd::default]"]]
       [2019-06-07T19:09:42+00:00] INFO: Run List expands to [yum-epel::default@3.3.0 (187c02d), motd::default@0.6.4 (0d3f734)]
       [2019-06-07T19:09:42+00:00] INFO: Starting Chef Infra Client Run for default-bento-centos-76
       [2019-06-07T19:09:42+00:00] INFO: Running start handlers
       [2019-06-07T19:09:42+00:00] INFO: Start handlers complete.
       resolving cookbooks for run list: ["yum-epel::default@3.3.0 (187c02d)", "motd::default@0.6.4 (0d3f734)"]
       [2019-06-07T19:09:42+00:00] INFO: Loading cookbooks [chef_handler@3.0.3, motd@0.6.4, yum-epel@3.3.0]
...
[2019-06-07T19:09:55+00:00] INFO: Chef Infra Client Run complete in 13.003485134 seconds

       Running handlers:
       [2019-06-07T19:09:55+00:00] INFO: Running report handlers
         - Motd::KnifeStatus
       Running handlers complete
       [2019-06-07T19:09:55+00:00] INFO: Report handlers complete
       Chef Infra Client finished, 9/15 resources updated in 14 seconds
```
