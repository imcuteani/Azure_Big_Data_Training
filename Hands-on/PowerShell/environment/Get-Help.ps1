# Get-Help displays information about PowerShell commands and concepts

#The Get-Help cmdlet displays information about PowerShell concepts and commands, 
#including cmdlets, functions, Common Information Model (CIM) commands, 
#workflows, providers, aliases, and scripts.

# Display basic help info about a cmdlet

Get-Help Format-Table

# Display list of articles which include the word remoting 

Get-Help -Name remoting

# Display provider specific help 

Get-Help Get-Item -Path SQLSERVER:\DataCollection

