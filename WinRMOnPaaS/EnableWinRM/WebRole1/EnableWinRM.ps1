$thumbprint = '2E5D4A684E92F02C8131944706F7DDD7001DCA8F'
$certId = 'golive-hackfest'
winrm create winrm/config/listener?Address=*+Transport=HTTPS `@`{Hostname=`"($certId)`"`;CertificateThumbprint=`"($thumbprint)`"`}
Set-Item WSMan:\localhost\Shell\MaxMemoryPerShellMB 2000
