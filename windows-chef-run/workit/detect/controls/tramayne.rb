title 'check Tramayne directory'


control 'tramayne-1.0' do                        # A unique ID for this control
  impact 0.3                                # The criticality, if this control fails.
  title 'Create tramayne directory'             # A human-readable title
  desc 'An optional description...'

  describe file('C:\tramayne') do
    it { should be_directory }
  end
end
