-- NTILE Function -- 

-- NTILE function is used to split a result set into N number of buckets of equal sizes

use AdventureWorks2016;

select p.FirstName, 
p.LastName,
NTILE(4) OVER(ORDER BY s.SalesYTD DESC) AS 'QuarterGroup',
s.SalesYTD, 
a.PostalCode
FROM Sales.SalesPerson s 
INNER JOIN Person.Person p 
ON s.BusinessEntityID = p.BusinessEntityID
INNER JOIN Person.BusinessEntityAddress ba ON p.BusinessEntityID = ba.BusinessEntityID
INNER JOIN Person.Address a ON a.AddressID = ba.AddressID
WHERE s.TerritoryID IS NOT NULL;


select p.FirstName, 
p.LastName,
NTILE(2) OVER(PARTITION BY s.TerritoryID ORDER BY s.SalesYTD DESC) AS 'QuarterGroup',
s.SalesYTD, 
s.TerritoryID
FROM Sales.SalesPerson s 
INNER JOIN Person.Person p 
ON s.BusinessEntityID = p.BusinessEntityID
INNER JOIN Person.BusinessEntityAddress ba ON p.BusinessEntityID = ba.BusinessEntityID
INNER JOIN Person.Address a ON a.AddressID = ba.AddressID
WHERE s.TerritoryID IS NOT NULL;