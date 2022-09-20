# Gets all command 

#The Get-Command cmdlet gets all commands that are installed on the computer, 
#including cmdlets, aliases, functions, filters, scripts, and applications.
#Get-Command gets the commands from PowerShell modules and 
#commands that were imported from other session

# This command gets the powershell cmdlets, functions and alias from the computer

Get-Command

# Get Commands in the current session

Get-Command -ListImported

# Get Commands and list them in order 

Get-Command -Type Cmdlet | Sort-Object -Property Noun | Format-Table -GroupBy Noun

# Get Commands from a module

Get-Command -Module Microsoft.PowerShell.Security, Microsoft.PowerShell.Utility | Format-Table

# Get commands by parameters 

Get-Command -ParameterName *Auth* -ParameterType System.Web.Configuration.AuthenticationMode

# Get an Alias 

Get-Command -Name dir