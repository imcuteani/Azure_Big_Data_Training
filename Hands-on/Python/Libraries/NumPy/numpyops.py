import numpy as np 

a = np.array([[1, 2], [3, 4]])

b = np.array([[5, 6], [7, 8]])

# vertical stacking 

print("Vertical stacking:\n", np.vstack((a, b)))

# horizontal stacking 

print("\nHorizontal stacking:\n", np.hstack((a, b)))

c = [5, 6]

#stacking of columns 

print("\nColumn stacking:\n", np.column_stack((a, c)))

# Concatenation function

print("\nConcatenation to 2nd axis:\n", np.concatenate((a, b), 1))