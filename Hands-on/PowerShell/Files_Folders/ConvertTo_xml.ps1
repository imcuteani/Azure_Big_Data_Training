## ConvertTo-XML 

#The ConvertTo-Xml cmdlet creates an XML-based representation of one or more .NET objects. 
#To use this cmdlet, pipe one or more objects to the cmdlet, 
#or use the InputObject parameter to specify the object.

# Create a date to XML 

Get-Date | ConvertTo-Xml | Out-File date.xml 

# Convert processes to XML 

#This command converts the process objects that represent all of the processes
#on the computer into an XML document. 
#The objects are expanded to a depth of three levels.

ConvertTo-Xml -As "Document" -InputObject (Get-Process) -Depth 3

