# Python is an OOPS. 

# A number, string, list, dictionary, tuple, set etc. are objects of a built-in class. 
# A class is like an object constructor
# A class is a blueprint of objects
# we instantiate a class to create an object 
# The class defines attributes and the behaviour of the object. 

class Person: 
    pass      # placeholder for future code 
print(Person)

# create an object by calling the class
# 
p = Person()
print(p) 

# Class Constructor 

# in python, a constructor function is used to make class more useful. Python has built-in init() constructor function. 
# the init constructor has self paramter which is a reference to the current instance of the class 

class Person: 
    def __init__ (self, name):
        #self allows to attach parameter to the class
        self.name = name

p = Person('Alan')
print(p.name)
print(p)        


# add some more paramters to the class constructor

class Person: 
    def __init__ (self, firstname, lastname, age, country, city):
        #self allows to attach parameter to the class
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.country = country
        self.city = city 

p = Person('Amy', 'Ronald', 25, 'England', 'Surrey')
print(p.firstname) 
print(p.lastname)
print(p.age)
print(p.country)
print(p.city)

# object methods 
# the methods are functions which belong to the object. 
class Person: 
    def __init__ (self, firstname, lastname, age, country, city):
        #self allows to attach parameter to the class
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.country = country
        self.city = city 
    def person_info(self): 
        return f'{self.firstname} {self.lastname} is {self.age} years old. She lives in {self.city},{self.country}'    

p = Person('Amy', 'Ronald', 25, 'England', 'Surrey')
print(p.person_info())

# object default methods 

class Person: 
    def __init__ (self, firstname='Mary', lastname='Reagon', age=28, country='UK', city='Cambridge'):
        #self allows to attach parameter to the class
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.country = country
        self.city = city 
    def person_info(self): 
        return f'{self.firstname} {self.lastname} is {self.age} years old. She lives in {self.city},{self.country}'    

p1 = Person()
print(p1.person_info())
p2 = Person('Vanessa', 'Carey', 30, 'Lisbon', 'Portugal')
print(p2.person_info())



