# Format-list cmdlet helps to format the output as a list of properties where a property appears on a new line. 


$a = Get-ChildItem .\file.txt 

# Format the output using the format-list cmdlet 

Format-List -InputObject $a  

# Get services diplayed in Format-List 

Get-Service | Format-List