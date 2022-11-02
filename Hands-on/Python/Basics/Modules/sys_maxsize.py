# sys_maxsize 

import sys

#fetch maximum value
max_value = sys.maxsize
print(max_value)

# create a list with max size

import sys

max_value = sys.maxsize

try:

  list = range(max_value + 1)

# print the length of the list
  print(len(list))

  print("List successfully created")

except Exception as e:
    print(e)
    print("List creation unsuccessful")