# Enable PS Remoting on Windows PS 

Enable-PSRemoting 
Set-PSSessionConfiguration -Name -ShowSecurityDescriptorUI

#Get service details from Remote Computer

Get-Service -Computer 

# Get Firewall rule 

Get-FirewallRule | Where DisplayName -Like "Windows Management Instrumentation" | Set-NetFirewallRule -Enable True -Verbose  

# Get Firewall rule for 'Remote Service Management

Get-NetFirewallRule | where DisplayGroup -EQ "Remote Service Management" | Set-NetFirewallRule -Enable True -Verbose

# For PS Remoting in PS Core

# Remoting is a process where we can execute the PS commands in a remote computer connected to the local network
#or it can connected via network 

get-service -ComputerName "Name of Client 1 computer"

# Copy contents to remote computer

$Session = New-PSSession -ComputerName "Server01" -Credential "Contoso\User01"
Copy-Item "D:\Folder001\test.log" -Destination "C:\Folder001_Copy\" -ToSession $Session

Get-Process   -ComputerName client01, dc01
