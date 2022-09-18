## provides the PS providers information

#A provider allows access to data and components that would not otherwise be easily accessible at the command line. 
#The data is presented in a consistent format that resembles a file system drive.

#The data that a provider exposes appears on a drive, and the data is accessed via a path just like with a disk drive. 
#Built-in cmdlets for each provider manage the data on the provider drive.

#PowerShell providers are .NET programs that provide access to specialized data stores for easier 
#viewing and management.


# Get information about one or more providers
Get-PSProvider 

# Get information about one or more drives

Get-PSDrive

# Get Provider information 

Get-PSDrive Function | Format-List *

# Get the view of the contents of a provider drive 

Get-Item alias: 

## Alias provider
#Drive - Alias:
#Object types - System.Management.Automation.AliasInfo
## Certificate provider
#Drive - Cert:
#Object types - Microsoft.PowerShell.Commands.X509StoreLocation, System.Security.Cryptography.X509Certificates.X509Certificate2
## Environment provider
#Drive - Env:
#Object types - System.Collections.DictionaryEntry
## FileSystem provider
#Drive - C: and other depending on hardware
#Object types - System.IO.FileInfo, System.IO.DirectoryInfo
## Function provider
#Drive - Function:
#Object types - System.Management.Automation.FunctionInfo
## Registry provider
#Drive - HKLM:, HKCU:
#Object types - Microsoft.Win32.RegistryKey
## Variable provider
#Drive - Variable:
#Object types - System.Management.Automation.PSVariable
