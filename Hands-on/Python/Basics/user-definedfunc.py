# def is the keyword to start Py functions

def sign(x): 
    if x > 0: 
        return 'positive'
    elif x < 0: 
        return 'negative'
    else: 
        return 'neutral'
for x in [-1, 0, 1]: 
    print(sign(x))

# pass optimal arguments to python functions


def hello(name, loud = False):
    if loud:
        print('HELLO, %s!' % name.upper())
    else:
        print('Hello, %s' % name)

hello('Bob') 
hello('Fred', loud = True)  

def fib(n):  # write a fibonacci series upto n 
    a, b = 0, 1
    while a < n: 
        print(a, end='')
        a, b = b, a+b 
        print()
fib(2000)


