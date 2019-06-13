describe package('telnet') do
  it { should_not be_installed }
end

describe package('httpd') do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_enabled }
  it { should be_running }
end

describe http('http://localhost') do
  its('status') { should cmp 403 }
  its('body') { should cmp /Apache HTTP server/ }
end
