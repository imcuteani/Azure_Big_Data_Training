#Import-Csv 

#Creates table-like custom objects from the items in a comma-separated value (CSV) file.

#The Import-Csv cmdlet creates table-like custom objects from the items in CSV files. 
#Each column in the CSV file becomes a property of the custom object and the items in rows become the property values. 
#Import-Csv works on any CSV file, including files that are generated by the Export-Csv cmdlet.


#You can use the parameters of the Import-Csv cmdlet to specify the column header row and the item delimiter, 
#or direct Import-Csv to use the list separator for the current culture as the item delimiter.

#You can also use the ConvertTo-Csv and ConvertFrom-Csv cmdlets to convert objects to 
#CSV strings (and back). These cmdlets are the same as the Export-CSV and Import-Csv 
#cmdlets, except that they do not deal with files.

#If a header row entry in a CSV file contains an empty or null value, 
#PowerShell inserts a default header row name and displays a warning message.

# Import process objects from a CSV file

#The Get-Process cmdlet sends process objects down the pipeline to the Export-Csv. 
#The Export-Csv cmdlet converts the process objects to CSV strings and saves the 
#strings in the Processes.csv file. 
#The Import-Csv cmdlet imports the CSV strings from the Processes.csv file. 
#The strings are saved in the $P variable. 
#The $P variable is sent down the pipeline to the Get-Member cmdlet that 
#displays the properties of the imported CSV strings. 
#The $P variable is sent down the pipeline to the Format-Table cmdlet and 
#displays the objects.

Get-Process | Export-Csv -Path .\Processes.csv
$P = Import-Csv -Path .\Processes.csv
$P | Get-Member

$P | Format-Table


# Specify the delimiter

Get-Process | Export-Csv -Path .\Processes.csv -Delimiter :
$P = Import-Csv -Path .\Processes.csv -Delimiter :
$P | Format-Table

#create a Custom object using a csv file 

Get-Content -Path .\Links.csv

113207,about_Aliases
113208,about_Arithmetic_Operators
113209,about_Arrays
113210,about_Assignment_Operators
113212,about_Automatic_Variables
113213,about_Break
113214,about_Command_Precedence
113215,about_Command_Syntax
144309,about_Comment_Based_Help
113216,about_CommonParameters
113217,about_Comparison_Operators
113218,about_Continue
113219,about_Core_Commands
113220,about_Data_Section

$A = Import-Csv -Path .\Links.csv -Header 'LinkID', 'TopicTitle'
$A | Get-Member

TypeName: System.Management.Automation.PSCustomObject

Name        MemberType   Definition
----        ----------   ----------
Equals      Method       bool Equals(System.Object obj)
GetHashCode Method       int GetHashCode()
GetType     Method       type GetType()
ToString    Method       string ToString()
LinkID      NoteProperty string LinkID=113207
TopicTitle  NoteProperty string TopicTitle=about_Aliases

$A | Where-Object -Property TopicTitle -Like '*alias*'

LinkID TopicTitle
------ ----------
113207 about_Aliases