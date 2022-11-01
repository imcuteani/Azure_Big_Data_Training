# Basic array characteristics 

import numpy as np 

# Creating array object 

arr = np.array( [[1, 2, 3],
                 [4, 5, 6]])
# printing type of array object
print("Array is of type: ", type(arr))

# printing array dimension (axes)

print("No of dimensions:", arr.ndim)

# printing shape of array 

print("Shape of array: ", arr.shape)

# printing size (total no of elements in array)

print("Size of array: ", arr.size)

# printing type of elements in array 

print("Array stores elements of type: ", arr.dtype)