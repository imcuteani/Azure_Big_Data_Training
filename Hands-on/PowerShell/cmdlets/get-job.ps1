# Gets PowerShell background jobs that are running in the current session.

#The Get-Job cmdlet gets objects that represent the background jobs that were started in the current session. You can use Get-Job to get jobs that were started by using the Start-Job cmdlet, 
#or by using the AsJob parameter of any cmdlet.

#start a PS job

Get-Job

# Start and stop the job using instance id 

$j = Get-Job -Name Job1
$ID = $j.InstanceID
$ID

#example

Guid
----
03c3232e-1d23-453b-a6f4-ed73c9e29d55

Stop-Job -InstanceId $ID

# Get jobs to include the specific command 

Get-Job -Command "*get-process*"

# Get job include specific command with the pipeline 

"*get-process*" | Get-Job

# Get jobs that not started 

Get-Job -State NotStarted

# Get job by list of properties 

Get-Job | Format-List -Property *

