# Where-Object cmdlet can be used to select the objects having a particular property values 
# from the collection of objects that are passes to it. 

# Get the list of all stopped and Running services 

Get-Service | Where-Object {$_.Status -eq "Stopped"}


Get-Service | Where-Object {$_.Status -eq "Running"}

# Get processes based on process name 

Get-Process | Where-Object {$_.ProcessName -Match "^p.*"}

# Select-Object cmdlet is used to select object and its properties 

Get-Process | Select-Object -Property ProcessName, Id -Last 5

# ForEach-Object cmdlet can be used to perform operations on each object of a collection of objects

1000, 2000, 3000  | ForEach-Object -Process {$_/1000}

"Microsoft.PowerShell.Core", "Microsoft.PowerShell.Core" | ForEach-Object {$_.Split(".")}

# Invoke-Item cmdlet is used to perform a default action a specified item

Invoke-Item .\file.txt


