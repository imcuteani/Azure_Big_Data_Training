# connect to SQL Server database 

import pyodbc 
server = 'DESKTOP-5E3MM02'
database = 'AdventureWorksLT2019'
username = 'sa'
password = 'admin@555'
# ENCRYPT defaults to yes starting in ODBC Driver 18. It's good to always specify ENCRYPT=yes on the client side to avoid MITM attacks.
cnxn = pyodbc.connect(driver='{SQL Server}', host=server, database=database, UID=username, PWD=password)
cursor = cnxn.cursor()

# Run Query 
#Sample select query
cursor.execute("SELECT @@version;") 
row = cursor.fetchone() 
while row: 
    print(row[0])
    row = cursor.fetchone()



