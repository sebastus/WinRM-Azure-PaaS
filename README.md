WinRM-Azure-PaaS
================

This repo contains the full source for my blog of the same name:

<a href="http://blogs.msdn.com/b/golive/archive/2014/11/28/use-remote-powershell-to-manage-your-azure-paas-compute-instances.aspx">
Use Remote PowerShell to Manage Your Azure PaaS Compute Instances</a>

Imagine for a moment that your API is running in an Azure web role.  You just updated it, and for some odd reason it’s not working right.  But you’ve seen this before.  The AppPool needs to be restarted.  On each instance.  There are 10 of them.  You don’t want to, but you’re going to have to log in to each instance and manually restart the AppPools.  Or, maybe your app manages some local storage.  Periodically you need to check to see how full it is, perhaps delete old log files, whatever.  Wouldn’t it be great if you could write a script that runs on your desktop that would loop through each instance and do the task?

Inside the WebRole1 project you will find the client-side PowerShell: EnableWinRM_client.ps1.
