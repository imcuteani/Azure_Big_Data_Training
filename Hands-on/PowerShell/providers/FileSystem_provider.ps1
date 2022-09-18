## File System provider -- 

# Provides access to files and directories

# The PowerShell FileSystem provider lets you get, add, change, clear, and delete files and directories in PowerShell.

#The FileSystem drives are a hierarchical namespace containing the 
#directories and files on your computer. 
#A FileSystem drive can be a logical or physical drive, 
#directory, or mapped network share.

# Getting files and directories 

Get-ChildItem

# Copy Items and Move Items 

Copy-Item -Path D:\ps.txt -Destination E:\Azure\ps.txt

Move-Item -Path D:\ps.txt -Destination E:\Kubernetes

# Get Contents of a File 

Get-Content -Path .\Get-Service.ps1

# Add Content to the file

Add-Content -Path .\Get-Help.ps1 -Value "Added PowerShell Content"