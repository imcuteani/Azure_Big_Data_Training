# Array Indexing on Numpy 

# slicing 
# Integer array indexing
# boolean array indexing 

import numpy as np 

arr = np.array( [[[-1, 2, 0, 4],
                  [4, -0.5, 6, 0],
                  [2.6, 0, 7, 9],
                  [5, -6, 3, 2.0] ]])

# Slicing array in Numpy
temp = arr[:2, ::2]
print("Array with slicing: taking first 2 rows and alternate columns:\n", temp)

# Integer array indexing example
tp = 8
desc = np.zeros((1, tp))
desc.shape
temp = arr[[0, 1, 2, 3], [3, 2, 1, 0]]
print("\nElements at indices (0,3), (1,2), (2, 1),"
                                      "(3, 0):\n", temp)


# Boolean array indexing sample

condition = arr > 0 # condition is a boolean array
temp = arr[condition]
print("\nElements greater than 0:\n", temp)
                  