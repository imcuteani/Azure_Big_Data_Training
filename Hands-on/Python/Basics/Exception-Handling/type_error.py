# type_error exception handling 

try: 
    name = input('Enter your name:')
    year_born = input('Year_you_born:')
    age = 2022 - int(year_born)
    print('You are {name}. And your age is {age}.', age)

except TypeError: 
    print("Type error occurred") 
except ValueError: 
    print('Value error occurred')
except ZeroDivisionError:
    print('Zero Division error occurred')
else: 
    print('I usually run this try block')
finally: 
    print('This is the exception handling sample')                   

# just passing exception block 
try: 
    name = input('Enter your name:')
    year_born = input('Year_you_born:')
    age = 2022 - int(year_born)
    print('You are {name}. And your age is {age}.', age)

except Exception as e:
    print(e) 
