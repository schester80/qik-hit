```bash
inspec exec example-profile/ \
--target winrm://vagrant@localhost:55985 --password vagrant
```

```
gks:windows-registry-key gkspranger$ inspec exec example-profile/ --target winrm://vagrant@localhost:55985 --password vagrant --sudo

Profile: InSpec Profile (example-profile)
Version: 0.1.0
Target:  winrm://vagrant@http://localhost:55985/wsman:3389

  ×  xccdf_org.cisecurity.benchmarks_rule_18.9.58.2.2_L1_Ensure_Do_not_allow_passwords_to_be_saved_is_set_to_Enabled: (L1) Ensure 'Do not allow passwords to be saved' is set to 'Enabled' (2 failed)
     ×  Registry Key HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services should have property "DisablePasswordSaving"
     expected #has_property?("DisablePasswordSaving") to return true, got false
     ×  Registry Key HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services DisablePasswordSaving should cmp == 1

     expected: 1
          got: nil

     (compared using `cmp` matcher)


## run chef-client to fix
## re-run inspec to show success


Profile Summary: 0 successful controls, 1 control failure, 0 controls skipped
Test Summary: 0 successful, 2 failures, 0 skipped
gks:windows-registry-key gkspranger$ inspec exec example-profile/ --target winrm://vagrant@localhost:55985 --password vagrant --sudo

Profile: InSpec Profile (example-profile)
Version: 0.1.0
Target:  winrm://vagrant@http://localhost:55985/wsman:3389

  ✔  xccdf_org.cisecurity.benchmarks_rule_18.9.58.2.2_L1_Ensure_Do_not_allow_passwords_to_be_saved_is_set_to_Enabled: (L1) Ensure 'Do not allow passwords to be saved' is set to 'Enabled'
     ✔  Registry Key HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services should have property "DisablePasswordSaving"
     ✔  Registry Key HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services DisablePasswordSaving should cmp == 1


Profile Summary: 1 successful control, 0 control failures, 0 controls skipped
Test Summary: 2 successful, 0 failures, 0 skipped
```
