# Conditional Operators in PS 

# IF statement in PS 

$x = 10
if ($x -le 20){
   Write-Host("This is if statement example")
}


# if-else statement 

$x = 30 

if($x -le 20) {
    Write-Host("This is if statement")
}else{
    Write-Host("This is else statement")
}

# else-if statement 

$x = 50

if($x -eq 10){
   write-host("Value of X is 10")
} elseif($x -eq 20){
   write-host("Value of X is 20")
} elseif($x -eq 30){
   write-host("Value of X is 30")
} else {
   write-host("This is else statement")
}

#PS Switch statement 

switch (4,2) {
   1 {"One"}
   2 {"Two"}
   3 {"Three"; break }
   4 {"Four"}
   3 {"Three Again"}
}