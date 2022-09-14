-- ROW_NUMBER in SQL Server-- 

-- ROW_NUMBER helps to provide numbers a result set sequentially 
-- from 1 to n based on the user-specified ordering
-- break the results into GROUPS and NUMBERS the rows to be displayed within a group by applying
-- a PARTITION BY clause 

use AdventureWorks2016;

select p.FirstName, 
p.LastName,
ROW_NUMBER() OVER(ORDER BY s.SalesYTD DESC) AS 'RowNumber',
s.SalesYTD, 
a.PostalCode
FROM Sales.SalesPerson s INNER JOIN Person.Person p 
ON s.BusinessEntityID = p.BusinessEntityID
INNER JOIN Person.BusinessEntityAddress ba ON p.BusinessEntityID = ba.BusinessEntityID
INNER JOIN Person.Address a ON a.AddressID = ba.AddressID 
WHERE s.TerritoryID IS NOT NULL


-- breaking the results into groups and numbers the rows within a group by
-- based on applying a PARTITION BY clause. 


select p.FirstName, 
p.LastName, 
ROW_NUMBER() OVER(PARTITION BY s.TerritoryID ORDER BY s.SalesYTD DESC) AS 'RowNumber',
s.SalesYTD, 
s.TerritoryID
FROM Sales.SalesPerson s 
INNER JOIN Person.Person p 
ON s.BusinessEntityID = p.BusinessEntityID
INNER JOIN Person.BusinessEntityAddress ba 
ON p.BusinessEntityID = ba.BusinessEntityID
INNER JOIN Person.Address a ON a.AddressID = ba.AddressID
WHERE s.TerritoryID IS NOT NULL;