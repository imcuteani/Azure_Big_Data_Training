# Measure-object cmdlet which can provide the proerties of the passed 
#output such as min, max, size, count, line no etc. 


Get-Content .\file.txt | Measure-Object -Character -Line -Word

# Get the count of no of files in the current directory 

Get-ChildItem | Measure-Object 

# Finding out the contents from a specified Windows Services, process properties 

$services = Get-Service 
$processes = Get-Process     
$services + $processes | Measure-Object
$services + $processes | Measure-Object -Property DisplayName

# System.Diagnostics.Process object does not have a DisplayName, is left out in the final count with DisplayName