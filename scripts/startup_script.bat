@echo off
 
powershell.exe -ExecutionPolicy Unrestricted -Command ". 'C:\temp\windows_precheck.ps1'" >> "C:\temp\startup_log_file.log" 2>&1
