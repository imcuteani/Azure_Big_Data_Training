-- Right Outer Join

--- using two table Product table and SalesOrderDetail table 

use AdventureWorks2016;

select a.ProductID, a.Name, b.SalesOrderID
from Sales.SalesOrderDetail b RIGHT OUTER JOIN Production.Product a 
ON a.ProductID = b.ProductID 
WHERE a.Color = 'Red'
ORDER BY 1;