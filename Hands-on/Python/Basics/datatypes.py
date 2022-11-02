# Python data types can be of four types: 
# - Numeric -> Integer, Complex Number, Float 
# - Dictionary -> unordered set of key-value pair of items. It's like associative array or a hash table where 
# each key stores a specific value. Keys can also hold any primitive data types, whereas values is an arbitary Python object. 

# Boolean -> true, false 
# Set -> used to store unordered collection of list which is iterable, mutable and no duplicate elements. It's highly obtimized way to access a specific element contained in the set. 
# Sets are unordered collection of elements, so we cant access items using indexes like lists. 
# Sequence type -> Strings, List, Tuple 
# tuples are similar to lists, tuples also can contain the collection of the items of different data types. 
# tuples is a read-only data structure which we cant modify the size and value of the items of a tuple. 

# Python creates a number object when a number is assigned to a variable 

a = 10 
print("The type of a: ", type(a))

b = 45.4 
print("The type of b: ", type(b))

c = 1 + 3j
print("The type of c:", type(c))
print("c is a complex number: ", isinstance(1+3j,complex))

str = "Hello this is Python Programming"
print(str)
hello = 'hello'
print(len(hello))
world = 'world'
hw = hello + ' ' + world  # string concatenation
hw12 = '%s %s %d' % (hello, world, 12)       # sprintf style string formatting
print(hw12)

# Lists 

xs = [3, 5, 7]  # create a list 
print(xs, xs[2])
print(xs[-1])           # negative index on list will count from the end of list 
xs[2] = 'python'
print(xs)
xs.append('programming')    # appending a new element to the end of the list 
print(xs)
x = xs.pop()  # remove and return the last element of the list 
print(x, xs)

# Python lists slicing operation 

nums = list(range(5))     # range is a built-in function which creates a list of integers 
print(nums)
print(nums[2:4])   # Get a slice from index 2 to 4 (exclusive)
print(nums[2:])   # get a slice from index 2 to end 
print(nums[:2])   # get a slice from start to index 2 (exclusive); 
print(nums[:])  # Get a slice of whole list 
print(nums[:-1])  # get a slice of whole list, slices can be negative 
nums[2:4] = [8, 9] # assign a new sublist to a slice 
print(nums)  

# Looping of python lists 

animals = ['cat', 'dog', 'tiger']
for animal in animals:
    print(animal)

animals = ['cat', 'dog', 'tiger']
for idx, animal in enumerate(animals): 
    print('#%d: %s' % (idx + 1, animal))


# List comprehension values 
# 
nums = [0, 1, 2, 3, 4]
squares = [] 
for x  in nums: 
    squares.append(x ** 2)
    print(squares) 

nums = [0, 1, 2, 3, 4]
even_squares = [x ** 2 for x in nums if x % 2 == 0]
print(even_squares)

# Dictionaries in Python 

d = {'math': 'algebra', 'chem': 'experiment', 'phys': 'laws', 'stat': 'variation'}
print(d['math'])
print('chem' in d)        # to check if a dictionary contains a specific key
d['bio'] = 'biology'
print(d['bio'])  
print(d.get('bio', 'N/A'))  # get an element with a default
del d['bio']   # delete an element from a dictionary 
print(d.get('bio', 'N/A')) # 'Bio' is no longer a key, prints 'N/A'


# Loop over dictionaries for iteration

d = {'person': 2, 'cat': 4, 'spider': 8}
for animal in d: 
    legs = d[animal]
    print('A %s has %d legs' % (animal, legs))

# sets are unordered collection of distinct elements 

animals = {'cat', 'dog'}
print('cat' in animals)  # check if an element is in a set, prints true
print('fish' in animals) 
animals.add('fish') 
print('fish' in animals) # prints true
print(len(animals))
animals.add('leopard')
print(len(animals))
animals.remove('cat')
print(len(animals))

# loop over sets 

animals = {'cat', 'dog', 'leopard'}
for idx, animal in enumerate(animals):
    print('#%d: %s' % (idx + 1, animal))

# Set comprehensions can be created list of comprehensions

from math import sqrt 
nums = {int(sqrt(x)) for x in range(30)}
print(nums) 


# Tuple is an ordered list of elements similar to list 

d = {(x, x + 1): x for x in range(10)}  # create a dictionary with tuple keys 

t = (5, 6) # create a tuple 
print(type(t))
print(d[t])   # print 5 
print(d[(1, 2)]) # print 1 (tuple key of first element of second index)
    