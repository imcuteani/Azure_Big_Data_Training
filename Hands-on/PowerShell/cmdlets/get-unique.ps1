#Cmdlets
#A cmdlet or "Command let" is a lightweight command used in the Windows PowerShell environment. 
#The Windows PowerShell runtime invokes these cmdlets at command prompt. 
#You can create and invoke them programmatically through Windows PowerShell APIs

#Cmdlet
#Get-Unique cmdlet can be used to get the unique objects from a sorted list of objects.

#In this example, we're see the Get-Unique cmdlet in action.

#In this example, we're set list of strings in a variable.

# Type the following command in PowerShell ISE Console

$list = "one","two","two","three","four","five", "six"

#we're printing the original list of strings.

$list

# we're sorting the list and then get the unique values.

$list | sort | get-unique