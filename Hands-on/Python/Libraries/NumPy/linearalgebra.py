#Linear Algebra in Numpy 

# on numpy array we can perform rank, determinant, trace etc. of an array
# eigen values of metrices
# matrix and vector products 
# solve the linear equations etc. 

import numpy as np 

arr = np.array([[6, 1, 1],
                [4, -2, 5],
                [2, 8, 9]])

print("Rank of array:", np.linalg.matrix_rank(arr))

# print the trace 

print("\nTrace of array:", np.trace(arr))

# Determinant of array 

print("\nDeterminant of array:\n", np.linalg.det(arr))

# inverse the matrix 

print("\nInverse of array:", np.linalg.inv(arr))

# Matrix arr can be raised to the power 3

print("\nMatrix arr is raised to power 3:\n", np.linalg.matrix_power(arr, 3))

# Linear equation 
a = np.array([[1, 3], [2, 4]])
b = np.array([8, 16])

print("Solution of this linear equation:\n", np.linalg.solve(a, b))