# Functions in Python 

# abs() function is used to return the absolute value of number 

integer = - 200
print('Absolute value is: ', abs(integer))

floating = -20.67
print('Absolute value of floating: ', abs(floating))

# all function in python 

# all() accepts an iterable object (list, dictionary etc.). It returns true if all items in passed iterable are true. 
# otherwise, it returns false. 

k = [3, 6, 9, 12]
print(all(k))

# all values are false 

k = [0, False]
print(all(k))

# one false value 

k = [1, 3, 7, 10] 
print(all(k))

# one true value 
k = [0, False, 5]
print(all(k))

# empty iterable 

k = []
print(all(k))

# bin function is used to return the binary representation of any integer 

x = 10
y = bin(x)
print(y)

# boolean function 

test1 = []
print(test1, 'is', bool(test1))

test1 = [0]
print(test1, 'is', bool(test1))

test1 = 0.0
print(test1, 'is', bool(test1))

test1 = None
print(test1, 'is', bool(test1))

test1 = 'Easy string'
print(test1, 'is', bool(test1))

# byte() return the bytes object

string = "hello python"
array = bytes(string, 'utf-8')
print(array)

# callable() function to check if the object passed can be called. 

x = 8
print(callable(x))

# compile() takes source code as input and returns a code object which can later executed by exec() function

code_str = 'x = 5\ny = 10 \nprint("sum=",x+y)'
code = compile(code_str, 'sum_py', 'exec')
print(type(code))
exec(code)
#exec(x)

x = 60

a = compile('x', 'test', 'single')
print(type(a))
exec(a)

x = 40 

a = compile('x == 40', '', 'eval')
print(eval(a))

# any() returns true if the any item in an iterable is true, else returns false 

I = [4, 3, 2, 1]
print(any(I))

I = [0, False]
print(any(I))

# ASCII() returns a string containing printable representation of an object 

normalText = "Python is the most popular programming language"
print(ascii(normalText))

#bytearray() returns a bytearray object and can convert objects into bytearray objects, create an empty bytearrat object

string = "python is a programming language"

arr = bytearray(string, 'utf-8')
print(arr)

# format() represents the formatted representation of the given value 

print(format(125, "d"))

# float arguments

print(format(124.55664445, "f"))

#binary format 

print(format(12, "b"))

#frozonset() returns an immutable frozenset object initialized with elements from the given variable

letters = ('m', 'r', 'a', 't', 's')
fSet = frozenset(letters)
print('Frozen set is:', fSet)
print('Empty frozen set is:', frozenset())

# local() can be declared to update and return the dictionary of the current local symbol table

def localsAbsent(): 
    return locals()

def localsPresent():
    present = True
    return locals()  

print('localsNotPresent', localsAbsent()) 
print('localsPresent:', localsPresent())     

# map() is used to return a list of results after applying a given function to each item of an iterable(list, tuple) etc. 

def calculateAddition(n): 
    return n+n 

numbers = (1, 2, 3, 4)
result = map(calculateAddition, numbers)
print(result)

# converting map object to set 

numbersAddition = set(result)
print(numbersAddition)

#enumerate() returns a enumerated object

result = enumerate([1, 2, 3])
print(result)
print(list(result))

# dict() function which is constructor creates a dictionary. 
# if no arguments are passed, it creates an empty dictionary
# if a positional arguments are given, a dictionary is created with the same key-value pairs. 
# if any keyword arguments are given, the keyword arguments and their values are added to the dictionary created from the positional argument

result = dict()  # returns an empty dictionary 
result2 = dict(a = 1, b = 2)  

print(result)
print(result2)