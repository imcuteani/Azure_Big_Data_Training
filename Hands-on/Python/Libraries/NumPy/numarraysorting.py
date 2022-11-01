import numpy as np 

a = np.array([[1, 4, 2],
              [3, 4, 6],
              [0, -1, 5]])

# sorting of array 
print("Array elements in sorted order:\n", np.sort(a, axis= None)) 

# sorting array in NumPy row-wise 

print("Row-wise sorted array:\n", np.sort(a, axis= 1))

# specify the sort algorithm 

print("Column wise sort algorithm by applying merge-sort:\n", np.sort(a, axis = 0, kind='mergesort'))

# example to show sorting of structured array 

dtypes = [('name', 'U10'), ('grad_year', int), ('cgpa', float)]

# values to be put in array 

values = [('Hans', 2006, 8.5), ('Alan', 2010, 6.8), ('Paul', 2022, 7.6), ('Andy', 2021, 8.4)]

# Creating array 
arr = np.array(values, dtype = dtypes)
print("\nArray sorted by names:\n", np.sort(arr, order = 'name'))

print("Array sorted by graduation year and then cgpa:\n", np.sort(arr, order=['grad_year', 'cgpa']))

              