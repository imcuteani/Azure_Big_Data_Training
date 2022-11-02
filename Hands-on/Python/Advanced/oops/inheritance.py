# Inheritance means we can reuse the parent class code 

# inheritance allows us to define a class which inherits all the methods and properties from the parent class. 
# the parent/super class/ base class is the class which gives all the methods and properties. 
# child class is the class that inherits from another parent class. 

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

class Person: 
    def __init__ (self, firstname='Mary', lastname='Reagon', age=28, country='UK', city='Cambridge'):
        #self allows to attach parameter to the class
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.country = country
        self.city = city 
        self.skills = []
    def person_info(self): 
        return f'{self.firstname} {self.lastname} is {self.age} years old. She lives in {self.city},{self.country}'  

    def add_empskill(self, skill):
        self.skills.append(skill) 

p1 = Person()
print(p1.person_info())
p1.add_empskill('python')
p1.add_empskill('react.js')
p1.add_empskill('mongodb')
p2 = Person('Vanessa', 'Carey', 30, 'Lisbon', 'Portugal')
print(p2.person_info())
print(p1.skills)
print(p2.skills)


class Student(Person):
    pass # placeholder 

#we can call the constructor we can access it through the parent properties by calling super()

s1 = Student('Emma', 'Carey', 32, 'England', 'Oxford')
s2 = Student('Lisa', 'Brummel', 26, 'Scotland', 'Glasgow')
print(s1.person_info())
s1.add_empskill('Javascript')
s1.add_empskill('azure')
s1.add_empskill('C#')
print(s1.skills)

print(s2.person_info())
s2.add_empskill('Marketing')
s2.add_empskill('Sales')
s2.add_empskill('Digital Banking')
print(s2.skills)


# method overriding 

class Student(Person): 
    def __init__ (self, firstname= 'Jane', lastname = 'Austin', age = 45, country = 'US', city='New Jersey', gender = 'female'):
        self.gender = gender
        super().__init__(firstname, lastname, age, country, city)
    def person_info(self): 
        gender = 'She' if self.gender == 'female' else 'He'
        return f'{self.firstname} {self.lastname} is {self.age} years old. {gender} lives in {self.city}, {self.country}.'

s1 = Student('Celine', 'Nash', 25, 'England', 'Cornwall', 'female')
s2 = Student('Angel', 'Gibbson', 31, 'Ireland', 'Belfast', 'male')
print(s1.person_info())
s1.add_empskill('java')
s1.add_empskill('golang')
s1.add_empskill('cybersecurity')
print(s1.skills)

print(s2.person_info())
s2.add_empskill('Digital marketing')
s2.add_empskill('commercial banking')
s2.add_empskill('Retail')
print(s2.skills)







