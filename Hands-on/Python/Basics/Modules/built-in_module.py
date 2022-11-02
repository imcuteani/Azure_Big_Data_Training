# Python has support for importing file/function using key word called import. 
# the built-in modules can be imported in the code like os, sys, random, statistics, collections, json etc. 


# OS module 

# using os module, we can perform many different os level tasks. The OS module in python provides functions
# for creating, changing current working directory, removing a directory/folder, fetching its contents etc. 


import os 
os.mkdir('E:\Azure\Training\Capgemini\Assignments\Azure_Big_Data_Training\Hands-on\Python\module')
os.getcwd()           # getting current working directory


# Sys module 

# The sys module provides functions and variables used to manipulate different parts of python runtime env.
# sys.argv returns a list of arguments passed to a python script. the item in index 0 in the list is always the name of the script, 
# at index 1 , refers to the argument passed from the command line

import sys
print('Welcome {}. Enjoy {} challenge!'.format(sys.argv[1], sys.argv[2]))
