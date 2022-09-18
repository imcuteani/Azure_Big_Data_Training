$i = "abc"        # $i holds a value of type string
$i = 2147483647   # $i holds a value of type int
++$i              # $i now holds a value of type double because
                  # 2147483648 is too big to fit in type int



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

