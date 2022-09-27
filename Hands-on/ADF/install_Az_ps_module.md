
# Install Azure PowerShell Module 

Pre-requisites 

1. Windows PowerShell 5.1 atleast

# Set the execution policy 

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Install the Az module 

Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force

# Connect to Azure resource 

Connect-AzAccount

