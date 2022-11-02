# Lambda function is a small, anonymous function without a name. It can have any number of arguments, but can
# have only one expression. 
# Lambda function is similar to anonymous function. 

from ctypes import c_ubyte


def add_two_nums(a, b): 
    return a + b

print(add_two_nums(2, 3))  
# Lets change the above function to a lambda function

add_two_nums = lambda a, b: a + b
print(add_two_nums(2, 3))

# self-invoking lambda function

(lambda a, b: a + b)(2, 4)

square = lambda x : x ** 2 
print(square(3))
cube = lambda x : x ** 3
print(cube(3))

# multiple variables 
mul_variables = lambda a, b, c: a ** 2 - 3 * b + 4 * c 
print(mul_variables(5, 6, 7))

# invoking Lambda function inside another function

def power(x): 
    return lambda n : x ** n 

cube = power(2) (3) 
print(cube)
two_power_of_five = power(2)(5)
print(two_power_of_five)    