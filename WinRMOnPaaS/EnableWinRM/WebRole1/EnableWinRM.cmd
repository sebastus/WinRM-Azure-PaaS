net user winrm_user > nul && echo User Exists || (net user winrm_user S3cr3tl7 /add >> EnableWinRMLog.txt
net localgroup administrators winrm_user /add  >> EnableWinRMLog.txt
echo User Created >> EnableWinRMLog.txt)
PowerShell -command Set-ExecutionPolicy -ExecutionPolicy Unrestricted >> EnableWinRMLog.txt
PowerShell .\EnableWinRM.ps1 >> EnableWinRMLog.txt
exit /B 0
