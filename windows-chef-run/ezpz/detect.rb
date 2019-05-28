title 'check for the myexadir directory'

control 'myexadir-1.0' do
  impact 0.3
  title 'Created myexadir directory'

  describe file('C:\myexadir') do
    it { should be_directory }
  end
end
