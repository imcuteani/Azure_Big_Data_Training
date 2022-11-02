# Regular expression or regex in python is a special text string which helps to find the patterns in data. 
# A regex can be used to check if some pattern exists in a different data type. 
# to use RegEx in python first, we should import the RegEx module which we called as re. 
# 
# 

import re

from numpy import mat

#from symbol import subscript 

# re.match() - searches for only in the begining of the first line of the string and returns matched objects if found. 
# else, returns None

# re.search - returns a match object if there's one anywhere in the string, including multiline string
# re.findall - returns a list containing all matches
# re.split - takes a string, splits it at the match points, returns a list 
# re.sub: replaces one or many matches within the string 


txt = 'This is python programming session and Spark'
match = re.match('This is python programming', txt, re.IGNORECASE)
print(match) 
# we can get the starting and ending position of the match as tuple using span() 
span = match.span()
print(span)
# Lets find out the start and stop position from the span
start, end = span
print(start, end)
substring = txt[start:end]
print(substring)

txt = '''This is python programming session and Spark.
 python code is much faster'''
match = re.search('programming', txt, re.IGNORECASE)
print(match)

# findall function 

txt = '''python is the most beautiful programming language that was ever created. 
I recommend python for the first programming language'''

# it returns a list 
matches = re.findall('created', txt, re.IGNORECASE)
print(matches)

# without re.I/re.IGNORECASE flag, we'll have to write our pattern differently, 

txt = '''python is the most beautiful programming language that was ever created. 
I recommend python for the first programming language'''

matches = re.findall('Python|python', txt)
print(matches)