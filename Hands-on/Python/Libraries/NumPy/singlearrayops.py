# Numpy array operations 

import numpy as np

a = np.array([1, 2, 3, 5])

# add 1 to every element
# 
print("Adding 1 to every element of Numpy: ", a+1)

# substract 3 from each element 

print("substract 3 from each element:", a-3)

# Multiply each element with 5 

print("multiplying each element by 5:", a*5)

#Square each element 

print("Squaring each element:", a**2)

# Modify existing array 
a *= 2
print("Doubled each element of the original array:", a)

# transpose an array 

a = np.array([[1, 2, 3], [3, 4, 5], [9, 6, 0]])
print("\nOriginal Array:\n", a)
print("Transpose of array:", a.T)
