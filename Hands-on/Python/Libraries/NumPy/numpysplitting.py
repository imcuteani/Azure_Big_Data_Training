# Numpy splitting 
import numpy as np 

a = np.array([[1, 3, 5, 7, 9, 14], 
              [2, 4, 6, 8, 10, 16]])

# splitting into horizontal axis 

print("Splitting along horizontal axis into two parts:\n", np.hsplit(a, 2))

# splitting into vertical axis

print("Splitting into vertical axis into 2 parts:\n", np.vsplit(a, 2))