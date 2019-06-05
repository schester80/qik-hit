Chef::Log.warn 'WRAPPER service example'

directory 'C:\workit'

# don't know what DLLs you are using, so just adding some randome ones
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
windows_service 'stop-wrapper' do
  action :nothing
end

## DLL UNLOAD / LOAD
## please forgive, i am terrible at all things windows
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
    notifies :stop, 'windows_service[start-wrapper]', :before
    notifies :start, 'windows_service[start-wrapper]', :delayed
    # not_if {  }
  end
end

# START SERVICE
windows_service 'start-wrapper' do
  action :nothing
end


# windows_path 'C:\workit' do
#   action :add
# end
