# Operators in PS 

#Arithemetic operator
#Assignment operator
#Comparison operator
#Logical Operator
#Redirectional operator
#Split and Join operator
#Type operator
#Unary operator


# Arithemetic operators in PS 
$a = 10
$b = 20
$c = 25
$d = 30

$a = 'string'
$b = 'stringoperator'
#$b -contains $a 
$b -notcontains $a 

$a + $b 

$a - $b 

$a * $b 

$b / $a 

$b % $a 

# Comparison Operators 

# greater than
$a -eq $b 

#less than 

$a -lt $b 

#not equal 

$a -ne $b
# greater than 

$a -gt $b 

# less than 
$a -lt $b  

# less than equals 

$a -le $b 

# Like operator in PS 
$str1 = "contoso"
$str2 = "fabrikum"

$str1 -like '*oso'

# not Like operator 

$str2 -notlike '*kum*'

$str1 -match '[m$]'

$str1 -notmatch '[k$]'

# Redirectional Operator in PS 

# Redirectional operator assigns the output to be printed into the redirected file / output device. 

$cmd = Get-Content ./test.txt

$cmd > getfile.txt
echo "this is an example of redirectional operator"> newfile.txt






