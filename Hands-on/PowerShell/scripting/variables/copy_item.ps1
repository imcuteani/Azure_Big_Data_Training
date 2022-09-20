# Copy a file to a spcified directory 

Copy-Item ".\log.txt" -Destination "E:\Azure"

#Copy contents of a file to another 

Copy-Item -Path ".\logfiles\*" -Destination "E:\Azure" -Recurse

