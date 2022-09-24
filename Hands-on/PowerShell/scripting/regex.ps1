# Regular expressions in PS 

# example of supported regular expressions through Match character

#Matches exact characters anywhere in the original value 

"book" -match "mm"

#Logic matches with any single character 

"copy" -match "m..n"

#Logic matches at one of characters in the brackets

"big" -match "b[iou]g"

#Matches with at least of one of the characters within the range

"and" -match "[a-e]nd"

#Match begining of characters"

"book" -match "^qo"

#Match to check ending of characters

"book" -match "ok$"



# example of regular expressions through the supported character classes 

# Match quantifiers through regular expression

