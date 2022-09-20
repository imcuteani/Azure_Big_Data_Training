## aliases 

#An alias is an alternate name for a command. A command can have multiple aliases, 
#and the original name and all of its aliases can be used interchangeably. 
#An alias can be reassigned. An alias is an item 

#An alias can be assigned to another alias;
 #however, the new alias is not an alias of the original command.

#The provider Alias is a flat namespace that contains only objects that represent the aliases. 
#The variables have no child items.

#Creates an alias 
New-Alias 

New-Alias -Name gh -Value Get-Help

Get-Help Get-CimInstance -Detailed

gh Get-CimInstance -Detailed

# Creates or changes one or more alias 

Set-Alias

# Gets information about one or more alias 

Get-Alias

# cd, chdir "Set-Location" , ls, dir "Get-ChildItem"

# Exports one or more alias to a file

Export-Alias

# Import alias - importing an alias file to powershell

Import-alias 