Chef::Log.warn 'hello world'

directory 'C:\workit'

node['services'].each do |service|
  node[service]['dlls'].each do |dll|
    cookbook_file "C:\workit\#{dll}.dll" do
      source "#{dll}.dll"
      action :create
    end
  end

  ## SERVICE STOP
  windows_service "#{service}" do
    action :stop
  end

  node[service]['dlls'].each do |dll|
    powershell_script 'load-dll' do
      code <<-EOS
      $regsvrp = Start-Process regsvr32.exe -ArgumentList "/u C:\workit\#{dll}.dll -PassThru
      $regsvrp = Start-Process regsvr32.exe -ArgumentList "/i C:\workit\#{dll}.dll -PassThru
      EOS
    end
  end

  ## SERVICE START
  windows_service "#{service}" do
    action :start
  end
end

# windows_path 'C:\workit' do
#   action :add
# end
