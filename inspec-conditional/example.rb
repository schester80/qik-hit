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

if service('sshd').installed?
  describe service 'sshd' do
    it { should be_running }
    it { should be_enabled }
  end
end

control 'example service' do
  impact 0.2

  if service('example1').installed?
    myapp = 'example1'
  elsif service('example2').installed?
    myapp = 'example2'
  elsif service('example3').installed?
    myapp = 'example3'
  end

  title "Ensure that #{myapp} service is running"
  desc "#{myapp} service needs to be running for app availablity"

  if service(myapp).installed?
    describe service(myapp) do
      it { should be_enabled }
      it { should be_running }
    end
  end
end
