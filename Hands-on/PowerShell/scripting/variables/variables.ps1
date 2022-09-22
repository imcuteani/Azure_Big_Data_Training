$i = "abc"        # $i holds a value of type string
$i = 2147483647   # $i holds a value of type int
++$i              # $i now holds a value of type double because
                  # 2147483648 is too big to fit in type int

                  $a = 12 # System.Int32 
                  $a = "Word" # System.String
                  $a = Get-ChildItem C:\Windows # FileInfo and DirectoryInfo types

                  #Type conversion

                  [int] $number = 8
                  $number = "12345"        #type conversion in PowerShell data type
                  $number

                  [string]$words = "Hello"
                  $words = 2
                  $words += 100  #the plus sign denotes the concatenation of strings
                  $words





#PowerShell defines the following categories of variables: static variables, instance variables, array elements,
# Hashtable key/value pairs, parameters, ordinary variables, and variables on provider drives. 
                  function F ($p1, $p2) {
                    $radius = 2.45
                    $circumference = 2 * ([Math]::PI) * $radius
                
                    $date = Get-Date -Date "2010-2-1 10:12:14 pm"
                    $month = $date.Month
                
                    $values = 10, 55, 93, 102
                    $value = $values[2]
                
                    $h1 = @{ FirstName = "James"; LastName = "Anderson" }
                    $h1.FirstName = "Smith"
                
                    $Alias:A = "Help"
                    $Env:MyPath = "e:\Temp"
                    ${E:output.txt} = 123
                    $function:F = { "Hello there" }
                    $Variable:v = 10
                }

 # error variable in PS 
 
 #Error variable in PowerShell is to view the errors generated in the current PowerShell session. 
 #We can say that the $Error variable is the container 
 #that stores all the errors and the latest error will be displayed first. 

 $ErrorView = "Categoryview"

 # Profile variable in PS 

 #The $PROFILE automatic variable stores the paths to the PowerShell profiles that are available in the current 
 #session. To view a profile path, display the value of the $PROFILE variable. 
 #You can also use the $PROFILE variable in a command to represent a path.

 $Env:<variable-name>

 # display the content of WinDir 

 $Env:windir

 # The $PROFILE automatic variable stores the paths to the PowerShell profiles that are available in the current session.

 $PROFILE | Get-Member -Type NoteProperty

 # Create a profile 

 if (!(Test-Path -Path <profile-name>)) {
  New-Item -ItemType File -Path <profile-name> -Force
}

