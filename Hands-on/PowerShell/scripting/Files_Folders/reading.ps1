# Writing to a text file 
# Step 1: 

New-Item .\test.txt

# Step 2: Add content 

Set-Content .\test.txt 'Welcome to PowerShell Training'

# Step 3: reading content 

get-Content .\test.txt

# Create an XML file 

New-Item .\text.xml -ItemType File

# add the content to this XML file 

Set-Content .\text.xml '<title>Welcome to PowerShell Training</title>'

# Get the content 

Get-Content.\text.xml 

# Clear the contents from a file 

Clear-Content .\text.xml

# Append the new contents to the file 

Add-Content .\test.txt "PowerShell is a tool used for automation in real world"