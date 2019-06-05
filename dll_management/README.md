```bash
# locally stand up the node
vagrant up

# go run the recipe
knife bootstrap windows winrm localhost \
-x 'vagrant' -P 'vagrant' \
-p 55985 \
-r 'recipe[dll]' \
-N dll-example
```

### registering using regsvr32 tool
```
The 64-bit version is %systemroot%\System32\regsvr32.exe.
The 32-bit version is %systemroot%\SysWoW64\regsvr32.exe.
```

### set the windows path
https://docs.chef.io/resource_windows_path.html
```ruby
windows_path 'C:\workit' do
  action :add
end
```

### links
- https://blog.chef.io/2018/07/25/packaging-cots-applications-for-windows/
- https://support.microsoft.com/en-us/help/249873/how-to-use-the-regsvr32-tool-and-troubleshoot-regsvr32-error-messages
- https://docs.chef.io/resource_service.html
- https://docs.chef.io/resource_windows_service.html
- https://docs.chef.io/attributes.html
