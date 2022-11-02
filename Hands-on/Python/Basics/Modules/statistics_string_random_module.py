# The statistics module provides functions for mathematical statistics of numeric data. 

from statistics import * 
ages = [20, 45, 3, 67, 78, 25, 22, 48, 26, 28]
print(mean(ages))
print(median(ages))
print(mode(ages))
print(stdev(ages))

# string module 
# string module is useful module for many purposes. 

import string
print(string.ascii_letters)  #show up the letters in ASCII 
print(string.digits)
print(string.punctuation)

# Random module 

# import random module which gives is a random number between 0 to 0.9999.... 

from random import random, randint

print(random())  # it does not take any arguments, it returns the value between 0 and 0.9999... 
print(randint(5, 25)) # it returns a random integer between [5,25] inclusive