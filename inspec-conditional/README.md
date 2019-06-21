## InSpec Conditionals
```bash
chef exec inspec exec \
example.rb \
--target ssh://vagrant@localhost:2222 \
--password 'vagrant'
```

You have the ability to write conditionals on any resource available .. To get really in depth, you can look at the source code and see what functions are available to you: https://github.com/inspec/inspec/tree/master/lib/inspec/resources

For example, the package resource has the `installed?` function, and you could use it as such:
```ruby
if package('sshd').installed?
  describe service 'sshd' do
    it { should be_running }
    it { should be_enabled }
  end
end
```
 So instead of taking action based on a hostname, you could take an action based on the presence of a package or service ..

Also, you can inherit InSpec profiles from other profiles, so you could allow for profile re-use and just have a wrapper profile that includes only the ones you want based on the node role, and then test the node role ..

https://www.inspec.io/docs/reference/profiles/

https://blog.chef.io/2017/07/06/understanding-inspec-profile-inheritance/

http://www.anniehedgie.com/inspec-basics-11
