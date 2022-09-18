# For Loop in PowerShell 

$array = @("item1", "item2", "item3")

for ($i = 0; $i -lt $array.Count; $i++) {
    <#$array Action that will repeat until the condition is met #>
    $array[$i]
}

# Foreach Loop 

$array = @("number1", "number2", "number")
foreach($element in $array) {$element}

$array | foreach {$_}


# While Loop 

$array = @("item1", "item2", "item3")
$counter = 0;

while($counter -lt $array.Length) {
    $array[$counter]
    $counter += 1

}


# Do-while loop 

$array = @{"item1", "item2", "item3"}
$counter = 0;

do {
    $array[$counter]
    $counter += 1

} while($counter -lt $array.Length)