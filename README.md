ez knife bootstrap for windows

```bash
knife bootstrap windows winrm \
vagrant@localhost \
--winrm-port 55985 \
--winrm-password 'vagrant' \
--winrm-user vagrant \
--run_list 'recipe[powershell-output::default]' \
-N win2016
```
