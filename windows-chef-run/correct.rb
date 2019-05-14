Chef::Log.warn 'hello world'

registry_key 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows NT\\Terminal Services' do
  values [
    { name: 'fAllowUnsolicited',
      type: :string,
      data: '0' }
  ]
end
