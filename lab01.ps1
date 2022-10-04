# Script Name: Screen Saver Lockout GPO for Windows 10
# Author: Shay Crane
# Date of last revision: 10/03/2022
# Description of purpose:  PowerShell script that will automatically lock enterprise workstations after a given amount of time. 

# To write the first versions of my script, I referred to the syntax in Microsoft's documentation, located at the following link: 
# https://learn.microsoft.com/en-us/powershell/module/grouppolicy/set-gpregistryvalue?view=windowsserver2022-ps

# The result was the script in comments below: 
# Set-RegistryValue -Key "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" -ValueName "ScreenSaveTimeOut" -Type DWORD -Value 300

# Below is the script I was able to test on a Windows 10 VM: 
Set-ItemProperty -Path "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\" -Name "IdleTime" -Type REG_SZ -Value 30
Get-ItemProperty -Path "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\"