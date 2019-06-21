if sys_info.hostname == 'example.chef.io'
  describe package 'wget' do
    it { should be_installed }
  end

  describe service 'sshd' do
    it { should be_running }
    it { should be_enabled }
  end
else
  describe package 'wget' do
    it { should_not be_installed }
  end
end
