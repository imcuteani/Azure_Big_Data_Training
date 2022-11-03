# connection with Azure SQL db 

import pymssql
conn = pymssql.connect(server='adventurecgdemo.database.windows.net', user='adminuser', password='admin@555', database='adventureworks')
cursor = conn.cursor()
cursor.execute('SELECT c.CustomerID, c.CompanyName, COUNT(sh.SalesOrderID) AS OrderCount FROM SalesLT.Customer as c LEFT OUTER JOIN SalesLT.SalesOrderHeader as sh ON c.CustomerID = sh.CustomerID GROUP BY c.CustomerID, c.CompanyName ORDER BY OrderCount DESC;')
row = cursor.fetchone()
while row:
    result_1 = (str(row[0])) 
    result_2 = (row[1])
    result_3 = (str(row[2]))
    print(result_1)
    print(result_2)
    print(result_3)
    newresult = (str(row[0]), "" (row[1]), " ", str(row[2]))
    print(newresult)
    row = cursor.fetchone() 


    # Insert a row 

import pymssql
conn = pymssql.connect(server='adventurecgdemo.database.windows.net', user='adminuser', password='admin@555', database='adventureworks')
cursor = conn.cursor()
cursor.execute("INSERT SalesLT.Product (Name, ProductNumber, StandardCost, ListPrice, SellStartDate) OUTPUT INSERTED.ProductID VALUES ('SQL Server Express', 'SQLEXPRESS', 0, 0, CURRENT_TIMESTAMP)")
row = cursor.fetchone()
while row:
        print("Inserted Product ID: " + str(row[0]))
        row = cursor.fetchone()
conn.commit()
conn.close()    


