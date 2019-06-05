Chef::Log.warn 'hello world'

directory 'C:\workit'

[
  'php_curl',
  'libcurl64'
].each do |dll|
  cookbook_file "C:\workit\#{dll}.dll" do
    source "#{dll}.dll"
    action :create
  end
end

## SERVICE STOP
windows_service 'your-service-name-here' do
  action :stop
end

## DLL UNLOAD / LOAD
[
  'php_curl',
  'libcurl64'
].each do |dll|
  powershell_script 'load-dll' do
    code <<-EOS
    $regsvrp = Start-Process regsvr32.exe -ArgumentList "/u C:\workit\#{dll}.dll -PassThru
    $regsvrp = Start-Process regsvr32.exe -ArgumentList "/i C:\workit\#{dll}.dll -PassThru
    $regsvrp.WaitForExit(5000) # Wait (up to) 5 seconds
    if($regsvrp.ExitCode -ne 0)
    {
        Write-Warning "regsvr32 exited with error $($regsvrp.ExitCode)"
    }
    EOS
    # not_if {  }
  end
end

# START SERVICE
windows_service 'chef-client' do
  action :start
end


# windows_path 'C:\workit' do
#   action :add
# end
