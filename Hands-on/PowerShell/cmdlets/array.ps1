# Array in PowerShell is a fixed size sequential collection of elements of the array type. 
# An Array is used to store a collection of data with various data types. 
# An array is often though of like a collection or objects. 

# number[0], number[1]... 


$myList = 5.6, 4.5, 3.3, 13.2, 4.0, 34.33, 34.0, 45.45, 99.993, 11123
       #mylist[0],mylist[1],mylist[2],mylist[3], mylist[4], mylist[5]        
write-host("Print all the array elements")
$myList


# processing Arrays 
Write-Host("Get the length of the Array")
$myList.Length

Write-Host("Get the fifth element of the array")
$myList[5]

Write-Host("Return Partial array")
$subList = $myList[1..3]
Write-Host("Lets print the sub list of this array")
$subList

#for loop using in an array 

Write-Host ("Using for loop")
for($i = 0; $i -le ($myList.Length - 1); $i +=1){
    $myList[$i]
}