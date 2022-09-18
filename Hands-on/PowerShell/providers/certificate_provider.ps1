#The PowerShell Certificate provider lets you get, 
#add, change, clear, and delete certificates and 
#certificate stores in PowerShell.

#The Certificate drive is a hierarchical namespace containing the certificate stores and certificates on your computer.

Set-Location Cert:

#work with the certificate provider from any other PowerShell drive. 
#To reference an alias from another location, use the Cert: drive name in the path.

PS Cert:\> Set-Location -Path LocalMachine\Root

# Return to System Drive 
Set-Location C:

# Display the contents of Cert drive 

Get-ChildItem Cert:

PS Cert:\CurrentUser\> Get-ChildItem


#This command uses the CodeSigningCert and Recurse parameters of the Get-ChildItem cmdlet to get all of the certificates on the computer that have 
#code-signing authority

Get-ChildItem -Path cert: -CodeSigningCert -Recurse