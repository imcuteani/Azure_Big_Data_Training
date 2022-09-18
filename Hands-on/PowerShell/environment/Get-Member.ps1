# Get-Member to get the properties and methods of objects 

# The Get-Member cmdlet gets the members, the properties and 
#methods, of objects.

# Get the members of process objects 

Get-Service | Get-Member

# Get extended members of service objects 

Get-Service | Get-Member -View Extended