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

get-service -ComputerName "Name of Client 1 computer"

# Copy contents to remote computer

$Session = New-PSSession -ComputerName "Server01" -Credential "Contoso\User01"
Copy-Item "D:\Folder001\test.log" -Destination "C:\Folder001_Copy\" -ToSession $Session
