#Set-Date cmdlet is used to set the System Date 

# Get-Date is used to get the System date 

Get-Date 

# Set date from the current date session 

Set-Date -Date (Get-Date).AddDays(-1)

# Time hint 

Get-Date -DisplayHint Time 

# set the time by -60 and +60 minutes

$timetoSub = New-TimeSpan -Minutes -60 
set-date -adjust $timetoSub

$timetoAdd = New-TimeSpan -Minutes 60
set-date -Adjust $timetoAdd
