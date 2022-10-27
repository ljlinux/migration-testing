#----------------------------------------------------------------------------------------------------------------------
# Script Name :  windows_precheck.ps1   
# This script will check all pre-requisites for 
# Virtio Driver, Cloud-Init, Administrator files backup
#----------------------------------------------------------------------------------------------------------------------

$WorkDirPath = "C:\temp\Scripts"
$PreCheckFilePath = "https://github.com/ljlinux/migration-testing/blob/main/scripts/windows_precheck.ps1?raw=true"
$PreCheckScript = "windows_precheck.ps1"
$TaskFilePath = "https://github.com/ljlinux/migration-testing/blob/main/scripts/startup_script.cmd?raw=true"
$StartScript = "startup_script.cmd"
$StartScriptPath = "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
Invoke-WebRequest -Uri $PreCheckFilePath -OutFile $WorkDirPath\$PreCheckScript -UseBasicParsing
Invoke-WebRequest -Uri $TaskFilePath -OutFile $StartScriptPath\$StartScript -UseBasicParsing