# ConvertTo-Csv

#The ConvertTo-CSV cmdlet returns a series of comma-separated value (CSV) strings 
#that represent the objects that you submit. 
#You can then use the ConvertFrom-Csv cmdlet to recreate objects from the CSV strings. 
#The objects converted from CSV are string values of the original objects that 
#contain property values and no methods.

# Convert an object to CSV

# convert the process object to a CSV string

Get-Process -Name 'PowerShell' | ConvertTo-Csv -NoTypeInformation

# Convert a DateTime object to CSV string

#The Get-Date cmdlet gets the DateTime object and saves it in the $Date variable. 
#The ConvertTo-Csv cmdlet converts the DateTime object to strings. 
#The InputObject parameter uses the DateTime object stored in the $Date variable.
 #The Delimiter parameter specifies a semicolon to separate the string values. 
 #The NoTypeInformation parameter removes the #TYPE information header from the CSV output.

$Date = Get-Date
ConvertTo-Csv -InputObject $Date -Delimiter ';' -NoTypeInformation

# Convert the PowerShell event log to CSV

(Get-Culture).TextInfo.ListSeparator
Get-WinEvent -LogName 'Windows PowerShell' | ConvertTo-Csv -UseCulture -NoTypeInformation


