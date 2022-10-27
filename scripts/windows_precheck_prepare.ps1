#----------------------------------------------------------------------------------------------------------------------
# Script Name :  windows_precheck_prepare.ps1   
# This script will setup the pre-requisite to the run the precheck script
#----------------------------------------------------------------------------------------------------------------------

$WorkDirPath = "C:\temp\Scripts"
$PreCheckFilePath = "https://github.com/ljlinux/migration-testing/blob/main/scripts/windows_precheck.ps1?raw=true"
$PreCheckScript = "windows_precheck.ps1"
$TaskFilePath = "https://github.com/ljlinux/migration-testing/blob/main/scripts/startup_script.bat?raw=true"
$StartScript = "startup_script.bat"
$StartScriptPath = "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
New-Item -ItemType "directory" -Path $WorkDirPath | Out-Null;
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
Invoke-WebRequest -Uri $PreCheckFilePath -OutFile $WorkDirPath\$PreCheckScript -UseBasicParsing
Invoke-WebRequest -Uri $TaskFilePath -OutFile "$StartScriptPath"\"$StartScript" -UseBasicParsing
