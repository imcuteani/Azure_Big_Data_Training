# Get-Service details displays the status of services running on a specific machine

# Create a mandatory parameter for ComputerName and for Service Status 
[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]
    [string[]]
    $ComputerName
)

# Creates a variable for Get-Service Objects

$Services = Get-Service -ComputerName $ComputerName

# Use ForEach to perform actions on each object in $Services

foreach($service in $services) {
    #Create variable containing status and display name using member enumeration
    $ServiceStatus = $service.Status
    #decimal notating the variable allows access to properties of each object

    $ServiceDisplayName = $service.displayname 
    
    #use if-else construct for decision making 

    if($ServiceStatus -eq 'Running'){
        Write-Output "Service OK - Status of $ServiceDisplayname is $ServiceStatus"
    }
    else(
        Write-Output "Check Service -Status of $ServiceDisplayname is $ServiceStatus"
    )
}