# Sys module 

# The sys module provides functions and variables used to manipulate different parts of python runtime env.
# sys.argv returns a list of arguments passed to a python script. the item in index 0 in the list is always the name of the script, 
# at index 1 , refers to the argument passed from the command line

import sys
print('Welcome {}. Enjoy {} challenge!'.format(sys.argv[1], sys.argv[2]))

sys.exit()  # exit from sys
sys.maxsize  # to know the largest integer variable it takes
sys.path   # to know the environment path
sys.version # to show the version of python