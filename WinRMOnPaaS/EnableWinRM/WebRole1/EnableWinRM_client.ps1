

# run this line by itself.  A dialog will ask for the 
# userid/password in EnableWinRM.cmd
$cred = Get-Credential

# then run this loop
for ($i=0; $i -lt 3; $i++) {
    $port = 30000 + $i
    $uri = "https://golive-winrm.cloudapp.net:$port"
    
    $psopt = New-PSSessionOption -SkipCACheck -SkipCNCheck -SkipRevocationCheck
    Enter-PSSession -ConnectionUri $uri -Credential $cred `
      -SessionOption $psopt `
      -Authentication Negotiate
    import-module WebAdministration
    $pool = Get-ChildItem IIS:\AppPools | where-object {$_.Name -NotLike '.NET*'}
    Restart-WebAppPool $pool.Name
    Exit-PSSession

}
