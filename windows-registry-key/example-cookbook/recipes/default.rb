Chef::Log.warn 'hello world'

registry_key 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows NT\\Terminal Services' do
  values [
    { name: 'DisablePasswordSaving',
      type: :string,
      data: '1' }
  ]
end
