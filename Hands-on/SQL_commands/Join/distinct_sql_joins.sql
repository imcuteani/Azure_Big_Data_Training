-- retrive unique results using DISTINCT keywords 

use AdventureWorks2016;

select DISTINCT b.ProductID, b.Name, b.ListPrice, a.UnitPrice AS 'Sales Price' 
FROM 
Sales.SalesOrderDetail AS a 
JOIN Production.Product AS b 
ON a.ProductID = b.ProductID AND a.UnitPrice < b.ListPrice
WHERE b.ProductID = 718; 

select DISTINCT p1.BusinessEntityID, p1.ProductID
from 
Purchasing.ProductVendor p1 
INNER JOIN Purchasing.ProductVendor p2 
ON p1.ProductID = p2.ProductID
WHERE p1.BusinessEntityID <> p2.BusinessEntityID
ORDER BY p1.ProductID;

use sqltraining; 
select distinct count(EmployeeID) from 
HumanResources.Employee;