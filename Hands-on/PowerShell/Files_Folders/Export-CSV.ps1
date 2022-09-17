#EXport-Csv 

#This cmdlet creates a CSV file of the objects that you submit. 
#Each object is a row that includes a comma-separated list of the object's property values. 
#You can use the Export-CSV cmdlet to create spreadsheets 
#and share data with programs that accept CSV files as input.

# Export process properties to a CSV file 

Get-Process -Name WmiPrvSE | Select-Object -Property BasePriority,Id,SessionId,WorkingSet |
  Export-Csv -Path .\WmiData.csv -NoTypeInformation
Import-Csv -Path .\WmiData.csv

# Export processes in a comma-delimited file 

Get-Process | Export-Csv -Path .\Processes.csv -NoTypeInformation
Get-Content -Path .\Processes.csv