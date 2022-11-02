# python uses try and except to handle errors gracefully. A graceful exit or graceful handling of error can be 
# done using exception handling machanism - try and except block. 

# try - run the code 
# except - execute this code when there's an exception
# else - no exception? Run this code 
# finally - Always run the code 

a = [1, 2, 3]
try: 
    print ("Second element = %d" %(a[1]))

    # throws error since there're only three elements in the array
    print("Fourth element = %d" %(a[3]))

except: 
    print("An error occurred")    



try: 
    name = input('Enter your name:')
    year_born = input('Year you were born:')
    age = 2022 - year_born
    print(f'You are {name}. And your age is {age}.')
except: 
    print('Something went wrong')  


# apply python except type error 

try: 
    name = input('Enter your name:')
    year_born = input('Year you were born:')
    age = 2022 - year_born
    print(f'You are {name}. And your age is {age}.')
except TypeError: 
    print('Type error occurred')

except ValueError: 
    print('Value error occurred') 

except ZeroDivisionError: 
    print('zero division error occurred')         
    