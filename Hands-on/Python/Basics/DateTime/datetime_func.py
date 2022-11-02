# python has got datetime module to handle date and time 

import _datetime
# from sqlite3 import Timestamp 
x = _datetime.date.today()
print(x)

from datetime import datetime
now = datetime.now()
print(now)
day = now.day
month = now.month
year = now.year
hour = now.hour
minute = now.minute
second = now.second
timestamp = now.timestamp()
print(day, month, year, hour, minute)
print('timestamp', timestamp)
print(f'{day}/{month}/{year}, {hour}:{minute}')

from datetime import datetime
today = datetime.now()
t = today.strftime("%H:%M:%S")
print("time:", t)
time_one = now.strftime("%m/%d/%Y, %H:%M:%S")
print("time one:", time_one)

#dd/mm/YY H:M:S format 

time_two = now.strftime("%d/%m/%Y, %H:%M:%S")
print("time_two", time_two)

# retrieve / using date from datetime 
from datetime import date 
d = date(2022, 9, 3)
print(d)
print('Current date:', d.today)
today = date.today()
print("Current year: ", today.year)
print("Current month: ", today.month)
print("Current day: ", today.day)

# difference between two points in Time using timedelta 

from datetime import timedelta
t1 = timedelta(weeks=20, days=10, hours=6, seconds=25)
t2 = timedelta(days=8, hours=4, minutes=3, seconds=30)
t3 = t1 - t2 
print("t3 as time delta: ", t3)